using System;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.EntityFrameworkCore;
using MIVisitorCenter.Data;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using MIVisitorCenter.Areas.Services;
using MIVisitorCenter.Models;
using MIVisitorCenter.Data.Abstract;
using MIVisitorCenter.Data.Concrete;

namespace MIVisitorCenter
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddDbContext<ApplicationDbContext>(options =>
                options.UseSqlServer(
                    Configuration.GetConnectionString("AuthenticationConnection")));
            services.AddDatabaseDeveloperPageExceptionFilter();

            services.AddDbContext<MIVisitorCenterDbContext>(options =>
                options.UseSqlServer(
                    Configuration.GetConnectionString("MIVisitorCenterConnection")));
            services.AddDatabaseDeveloperPageExceptionFilter();

            services.AddScoped<IBusinessRepository, BusinessRepository>();
            services.AddScoped<IPhotoCollectionRepository, PhotoCollectionRepository>();

            services.AddScoped<ICategoryRepository, CategoryRepository>();

            services.AddDefaultIdentity<ApplicationUser>(options => options.SignIn.RequireConfirmedAccount = true)
                .AddRoles<IdentityRole>()
                .AddEntityFrameworkStores<ApplicationDbContext>();
            services.AddControllersWithViews();

            services.AddAuthorization(options =>
            {
                options.AddPolicy("BusinessOwner",
                    policy => policy.AddRequirements(new BusinessOwnerRequirement()));
            });

            services.AddTransient<IAuthorizationHandler, BusinessOwnerHandler>();

            services.AddTransient<IEmailSender, MailKitEmailSender>();
            services.Configure<MailKitEmailSenderOptions>(options =>
            {
                options.HostAddress = Configuration["ServiceProviders:MailKit:SMTP:Address"];
                options.HostPort = Convert.ToInt32(Configuration["ServiceProviders:MailKit:SMTP:Port"]);
                options.HostUsername = Configuration["ServiceProviders:MailKit:SMTP:Account"];
                options.HostPassword = Configuration["ServiceProviders:MailKit:SMTP:Password"];
                options.SenderEMail = Configuration["ServiceProviders:MailKit:SMTP:SenderEmail"];
                options.SenderName = Configuration["ServiceProviders:MailKit:SMTP:SenderName"];
            });
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseMigrationsEndPoint();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }
            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthentication();
            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller=Home}/{action=Index}/{id?}");
                endpoints.MapRazorPages();
            });
        }
    }
}
