using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using MIVisitorCenter.Data;
using MIVisitorCenter.Models;
using System;
using System.Threading.Tasks;

namespace MIVisitorCenter.Utilities
{
    public static class SeedUsers
    {
        public static async Task Initialize(IServiceProvider serviceProvier, UserInfoData[] seedData, string testUserPw)
        {
            try
            {
                using (var context = new ApplicationDbContext(serviceProvier.GetRequiredService<DbContextOptions<ApplicationDbContext>>()))
                {
                    var userManager = serviceProvier.GetRequiredService<UserManager<ApplicationUser>>();

                    foreach (var u in seedData)
                    {
                        var identityID = await EnsureUser(userManager, testUserPw, u.Email, u.UserName, u.BusinessName, u.EmailConfirmed);

                    }
                }
            }
            catch (InvalidOperationException ex)
            {
                throw new Exception("Failed to initialize user seed data, service provider did not have the correct service");
            }
        }

        public static async Task InitializeAdmin(IServiceProvider serviceProvider, string email, string userName, string adminPw, string businessName)
        {
            try
            {
                using (var context = new ApplicationDbContext(serviceProvider.GetRequiredService<DbContextOptions<ApplicationDbContext>>()))
                {
                    var userManager = serviceProvider.GetRequiredService<UserManager<ApplicationUser>>();
                    var identityID = await EnsureUser(userManager, adminPw, email, userName, businessName, true);
                    var roleManager = serviceProvider.GetRequiredService<RoleManager<IdentityRole>>();
                    await EnsureRoleForUser(roleManager, userManager, identityID, "admin");
                }
            }
            catch (InvalidOperationException ex)
            {
                // Thrown if there is no service of the type requested from the service provider
                // Catch it (and don't throw the exception below) if you don't want it to fail (5xx status code)
                throw new Exception("Failed to initialize admin user or role service provider did not have the correct service:" + ex.Message);
            }
        }

        private static async Task<string> EnsureUser(UserManager<ApplicationUser> userManager, string password, string email, string username, string businessName, bool emailConfirmed)
        {
            var user = await userManager.FindByNameAsync(username);
            if (user == null)
            {
                user = new ApplicationUser
                {
                    UserName = username,
                    Email = email,
                    BusinessName = businessName,
                    EmailConfirmed = emailConfirmed
                };
                await userManager.CreateAsync(user, password);
            }

            if (user == null)
            {
                throw new Exception("The password is probably not strong enough!");
            }

            return user.Id;
        }

        private static async Task<IdentityResult> EnsureRoleForUser(RoleManager<IdentityRole> roleManager, UserManager<ApplicationUser> userManager, string uid, string role)
        {
            IdentityResult iR = null;

            if (!await roleManager.RoleExistsAsync(role))
            {
                iR = await roleManager.CreateAsync(new IdentityRole(role));
            }

            var user = await userManager.FindByIdAsync(uid);
            if (user == null)
            {
                throw new Exception("An AspNetUser does not exist with the given id so we cannot give them the requested role");
            }

            if (!await userManager.IsInRoleAsync(user, role))
            {
                iR = await userManager.AddToRoleAsync(user, role);
            }

            return iR;
        }
    }
}