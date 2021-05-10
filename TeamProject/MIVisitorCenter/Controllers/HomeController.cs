using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using MIVisitorCenter.Models;
using Microsoft.EntityFrameworkCore;
using MIVisitorCenter.Data.Abstract;

namespace MIVisitorCenter.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IConfiguration _config;
        private readonly IComponentRepository _component;

        public HomeController(ILogger<HomeController> logger, IConfiguration config, IComponentRepository component)
        {
            _logger = logger;
            _config = config;
            _component = component;
        }

        public IActionResult Index()
        {
            ViewData["Components"] = _component.GetAll().Include(i => i.ComponentImages).Include(t => t.ComponentTexts).Where(p => p.Page.Name == "Index").ToArray();
            return View("Index", _config["GoogleApiKey"]);
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
