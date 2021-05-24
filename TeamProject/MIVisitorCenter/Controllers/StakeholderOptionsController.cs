using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MIVisitorCenter.Controllers
{
    public class StakeholderOptionsController : Controller
    {
        [Authorize(Roles = "admin")]
        public IActionResult CalendarOptions()
        {
            return View();
        }

        [Authorize(Roles = "admin")]
        public IActionResult MapOptions()
        {
            return View();
        }
        
        [Authorize(Roles = "admin")]
        public IActionResult WebstoreOptions()
        {
            return View();
        }
    }
}
