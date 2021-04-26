using System;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using MIVisitorCenter.Data;
using MIVisitorCenter.Data.Migrations;
using MIVisitorCenter.Models;

namespace MIVisitorCenter.Areas.Services
{
    public class BusinessOwnerHandler : AuthorizationHandler<BusinessOwnerRequirement, Business>
    {
        public MIVisitorCenterDbContext Context { get; set; }
        public ApplicationDbContext AppDbContext { get; set; }
        public UserManager<ApplicationUser> UserManager { get; set; }
        public BusinessOwnerHandler(MIVisitorCenterDbContext context, UserManager<ApplicationUser> userManager, ApplicationDbContext appDbContext)
        {
            Context = context;
            AppDbContext = appDbContext;
            UserManager = userManager;
        }
        protected override Task HandleRequirementAsync(AuthorizationHandlerContext AHContext, BusinessOwnerRequirement requirement, Business business)
        {
            if (!AHContext.User.Identity.IsAuthenticated)
            {
                return Task.CompletedTask;
            }

            var currentUser = AppDbContext.Users.FirstOrDefault(u => u.Id == UserManager.GetUserId(AHContext.User));
            var userBusiness = Context.Businesses.FirstOrDefault(b => b.Name.Equals(currentUser.BusinessName));

            try
            {
                if (AHContext.User.IsInRole("admin") || userBusiness.Id == business.Id)
                {
                    AHContext.Succeed(requirement);
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }


            return Task.CompletedTask;
        }
    }
}