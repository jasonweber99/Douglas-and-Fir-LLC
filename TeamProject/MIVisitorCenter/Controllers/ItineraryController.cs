using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MIVisitorCenter.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MIVisitorCenter.Controllers
{
    public class ItineraryController : Controller
    {
        private readonly MIVisitorCenterDbContext _context;

        public ItineraryController(MIVisitorCenterDbContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult PlanATrip()
        {
            var stops = _context.Categories
                                    .Where(n => n.Name == "Restaurants" ||
                                        n.Name == "Hiking" ||
                                        n.Name == "Cycling" ||
                                        n.Name == "Birding" ||
                                        n.Name == "Fishing" ||
                                        n.Name == "Wineries" ||
                                        n.Name == "Historic Sites & Museums" ||
                                        n.Name == "Birding" ||
                                        n.Name == "Art Galleries" ||
                                        n.Name == "Cinemas & Performing Arts")
                                    .Include(b => b.BusinessCategories)
                                    .ThenInclude(b => b.Business)
                                    .ThenInclude(a => a.Address)
                                    .AsQueryable();
                                    // .GroupBy(c => c.Name);
                                    
            return View(stops);
        }
    }
}
