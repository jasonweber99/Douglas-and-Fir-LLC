using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using HimalayanDbProject.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace HimalayanDbProject.Controllers
{
    public class HomeController : Controller
    {
        private readonly ExpeditionsDbContext _dbContext;
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger, ExpeditionsDbContext context)
        {
            _dbContext = context;
            _logger = logger;
        }

        public IActionResult Index()
        {
            var expeditionDbContext = _dbContext.Expeditions.Include(e => e.Peak).Include(e => e.TrekkingAgency).OrderByDescending(e => e.StartDate).Take(5).ToList();

            return View(expeditionDbContext);

            //var expeditionDbContext = _dbContext.Peaks.Include(p => p.Expeditions).OrderByDescending(p => p.Height).Take(15).ToList();
            //var vmList = new List<HomeIndexVM>();

            //for (int i = 0; i < 15; i++)
            //{
            //    vmList.Add(new HomeIndexVM
            //    {
            //        Rank = i + 1,
            //        Name = expeditionDbContext[i].Name,
            //        Height = expeditionDbContext[i].Height,
            //        FirstClimbed = expeditionDbContext[i].FirstAscentYear,
            //        NumExpeditions = expeditionDbContext[i].Expeditions.Count()
            //    });
            //}

            //return View(vmList);
        }

        public IActionResult Submit()
        {
            ViewData["PeakId"] = new SelectList(_dbContext.Peaks, "Id", "Name");
            ViewData["TrekkingAgencyName"] = new SelectList(_dbContext.TrekkingAgencies, "Id", "Name");
            return View();
        }

        public IActionResult Peaks()
        {
            var peaks = _dbContext.Peaks.OrderByDescending(y => y.FirstAscentYear);
            return View(peaks);
        }
        [HttpGet]
        public IActionResult Peak(int? id)
        {
            var content = _dbContext.Peaks.Include(e => e.Expeditions).ThenInclude(t => t.TrekkingAgency).Where(peak => peak.Id == id);
            return View(content);
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
