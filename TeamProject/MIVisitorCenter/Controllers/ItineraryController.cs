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

            var generatedItineraries = new List<ItineraryBuilderViewModel>();

            
            var interests = new List<Category>();
            var businesses = _categoryRepo.GetAllMIBusinesses();
            var lodging = _categoryRepo.GetAllLodging();

            for (int i = 1; i < 3; i++)
            {
                ItineraryBuilderViewModel itin = new ItineraryBuilderViewModel();
                itin.Itinerary = new Itinerary(i, interests, businesses, lodging);
                generatedItineraries.Add(itin);
            }

            // Adding information to generated Itineraries for correct card display
            generatedItineraries.ElementAt(0).Name = "Have a Free Afternoon?";
            generatedItineraries.ElementAt(0).Description = "Here is a templated itinerary for places to visit if you are passing through the Monmouth Independence area for the day.";
            generatedItineraries.ElementAt(0).ImageUrl = "https://images.unsplash.com/photo-1560496689-d89304f3c845?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2413&q=80";
            generatedItineraries.ElementAt(1).Name = "Staying the Weekend?";
            generatedItineraries.ElementAt(1).Description = "Here is a templated itinerary for places to visit if you are planning on taking a weekend trip to the Monmouth Independence area.";
            generatedItineraries.ElementAt(1).ImageUrl = "https://images.unsplash.com/photo-1570916031598-214d38405424?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3378&q=80";

            return View(generatedItineraries);
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
