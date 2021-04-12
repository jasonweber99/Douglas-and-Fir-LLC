using System;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.AspNetCore.WebUtilities;
using Microsoft.Extensions.Logging;
using MIVisitorCenter.Models;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Text.Encodings.Web;
using System.Threading.Tasks;

namespace MIVisitorCenter.Areas.Identity.Pages.Account
{
    [Authorize(Roles = "admin")]
    public class RegisterModel : PageModel
    {
        private readonly SignInManager<ApplicationUser> _signInManager;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly ILogger<RegisterModel> _logger;
        private readonly IEmailSender _emailSender;

        public RegisterModel(
            UserManager<ApplicationUser> userManager,
            SignInManager<ApplicationUser> signInManager,
            ILogger<RegisterModel> logger,
            IEmailSender emailSender,
            MIVisitorCenterDbContext context)
        {
            _userManager = userManager;
            _signInManager = signInManager;
            _logger = logger;
            _emailSender = emailSender;
            Context = context;
        }

        [BindProperty]
        public InputModel Input { get; set; }

        public string ReturnUrl { get; set; }

        public IList<AuthenticationScheme> ExternalLogins { get; set; }

        public MIVisitorCenterDbContext Context { get; set; }

        public List<SelectListItem> Businesses => Context.Businesses.OrderBy(x => x.Name)
            .Select(n => new SelectListItem(n.Name, n.Name)).ToList();

        public class InputModel
        {
            [Required]
            [Display(Name = "Business Name")]
            public string BusinessName { get; set; }

            [Required]
            [EmailAddress]
            [Display(Name = "Email")]
            public string Email { get; set; }
        }

        public async Task OnGetAsync(string returnUrl = null)
        {
            ReturnUrl = returnUrl;
            ExternalLogins = (await _signInManager.GetExternalAuthenticationSchemesAsync()).ToList();
        }

        public async Task<IActionResult> OnPostAsync(string returnUrl = null)
        {
            returnUrl ??= Url.Content("~/");
            ExternalLogins = (await _signInManager.GetExternalAuthenticationSchemesAsync()).ToList();
            if (!ModelState.IsValid) return Page();
            var user = new ApplicationUser { UserName = Input.Email, Email = Input.Email, BusinessName = Input.BusinessName};
            var tempPassword = GenerateRandomPassword();
            var result = await _userManager.CreateAsync(user, tempPassword);
            if (result.Succeeded)
            {
                _logger.LogInformation($"Admin created a new account with password {tempPassword}");

                var token = await _userManager.GenerateEmailConfirmationTokenAsync(user);
                token = WebEncoders.Base64UrlEncode(Encoding.UTF8.GetBytes(token));

                var passwordSetCode = await _userManager.GeneratePasswordResetTokenAsync(user);

                var callbackUrl = Url.Page(
                    "/Account/ConfirmEmail",
                    pageHandler: null,
                    new { area = "Identity", userId = user.Id, code = token, returnUrl },
                    protocol: Request.Scheme);

                await _emailSender.SendEmailAsync(Input.Email, "Confirm your email",
                    $"Please confirm your account by <a href='{HtmlEncoder.Default.Encode(callbackUrl)}'>clicking here</a>, then log in with your generated password '{tempPassword}'. Finally, change your password by clicking on your email at the top right of the screen. ");

                if (_userManager.Options.SignIn.RequireConfirmedAccount)
                {
                    return RedirectToPage("RegisterConfirmation", new { email = Input.Email, returnUrl });
                }
                else
                {
                    await _signInManager.SignInAsync(user, isPersistent: false);
                    return LocalRedirect(returnUrl);
                }
            }
            foreach (var error in result.Errors)
            {
                ModelState.AddModelError(string.Empty, error.Description);
            }

            return Page();
        }

        private static string GenerateRandomPassword()
        {
            const string charsUpper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            const string charsLower = "abcdefghijklmnopqrstuvwxyz";
            const string charsNums = "0123456789";
            const string charsSymbols = "!@#$%^&*()";
            var password = new char[12];
            var random = new Random();

            for (var i = 0; i < password.Length; i++)
            {
                switch (i % 4)
                {
                    case 0:
                        password[i] = charsUpper[random.Next(charsUpper.Length)];
                        break;
                    case 1:
                        password[i] = charsLower[random.Next(charsLower.Length)];
                        break;
                    case 2:
                        password[i] = charsNums[random.Next(charsNums.Length)];
                        break;
                    case 3:
                        password[i] = charsSymbols[random.Next(charsSymbols.Length)];
                        break;
                }
            }
            return new string(password);
        }
    }
}
