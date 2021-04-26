using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MIVisitorCenter.Data.Abstract;
using MIVisitorCenter.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MIVisitorCenter.Controllers
{
    public class ItineraryController : Controller
    {
        //private readonly MIVisitorCenterDbContext _context;
        private readonly ICategoryRepository _categoryRepo;

        public ItineraryController(ICategoryRepository categoryRepo)
        {
            //_context = context;
            _categoryRepo = categoryRepo;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult PlanATrip()
        {
            ViewBag.Restaurants = _categoryRepo.GetBusinessesByCategory("Restaurants").ToList();
            ViewBag.Lodging = _categoryRepo.GetAllLodging().ToList();
            ViewBag.Activities = _categoryRepo.GetAllActivities().ToList();
            ViewBag.Culture = _categoryRepo.GetAllArtAndCulture().ToList();

            return View();
        }

        public IActionResult ItineraryBuilder()
        {
            return View();
        }

        public IActionResult Build(ItineraryBuilderViewModel itin) 
        {
            var interests = new List<Category>();
            if(itin.Categories != null)
            {
                interests = _categoryRepo.GetCategoryListFromStringList(itin.Categories.ToList());
            }
            var businesses = _categoryRepo.GetAllMIBusinesses();
            var lodging = _categoryRepo.GetAllLodging();
            itin.Itinerary = new Itinerary(itin.Length, interests, businesses, lodging);
            return View("ItineraryBuilder", itin);
        }
    }
}
