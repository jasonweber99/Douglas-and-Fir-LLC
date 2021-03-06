using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MIVisitorCenter.Controllers
{
    public class ItineraryController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult PlanATrip()
        {
            return View();
        }
    }
}
