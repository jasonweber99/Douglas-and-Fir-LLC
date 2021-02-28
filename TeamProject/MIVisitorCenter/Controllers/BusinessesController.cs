using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using MIVisitorCenter;
using MIVisitorCenter.Models;

namespace MIVisitorCenter.Controllers
{
    public class BusinessesController : Controller
    {
        private readonly MIVisitorCenterDbContext _context;

        public BusinessesController(MIVisitorCenterDbContext context)
        {
            _context = context;
        }

        // GET: Businesses
        public async Task<IActionResult> Index()
        {
            var mIVisitorCenterDbContext = _context.Businesses.Include(b => b.Address);
            return View(await mIVisitorCenterDbContext.ToListAsync());
        }

        public IActionResult EatAndDrink()
        {
            var businesses = _context.Categories
                                    .Where(n => n.Name == "Restaurants" || n.Name == "Coffee" || n.Name == "Wineries" || n.Name == "Bars")
                                    .Include(b => b.BusinessCategories)
                                    .ThenInclude(b => b.Business)
                                    .ThenInclude(a => a.Address)
                                    .AsEnumerable()
                                    .GroupBy(c => c.Name);
            return View(businesses);
        }

        public IActionResult ArtAndCulture()
        {
            var businesses = _context.Categories
                                    .Where(n => n.Name == "Historic Sites & Museums" || n.Name == "Art Galleries" || n.Name == "Festivals & Events" || n.Name == "Cinemas & Performing Arts")
                                    .Include(b => b.BusinessCategories)
                                    .ThenInclude(b => b.Business)
                                    .ThenInclude(a => a.Address)
                                    .AsEnumerable()
                                    .GroupBy(c => c.Name);
            return View(businesses);
        }

        public IActionResult Lodging()
        {
            var businesses = _context.Lodgings/*.Include(l => l.Business).ThenInclude(b => b.Address).Include(l => l.LodgingAmenities)*/;
            return View(businesses);
        }

        // GET: Businesses/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var business = await _context.Businesses
                .Include(b => b.Address)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (business == null)
            {
                return NotFound();
            }

            return View(business);
        }

        // GET: Businesses/Create
        [Authorize(Roles = "admin")]
        public IActionResult Create()
        {
            ViewData["AddressId"] = new SelectList(_context.Addresses, "Id", "City");
            return View();
        }

        // POST: Businesses/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize(Roles = "admin")]
        public async Task<IActionResult> Create([Bind("Id,Name,Description,Phone,Website,PictureFileName,AddressId")] Business business)
        {
            if (ModelState.IsValid)
            {
                _context.Add(business);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["AddressId"] = new SelectList(_context.Addresses, "Id", "City", business.AddressId);
            return View(business);
        }

        // GET: Businesses/Edit/5
        [Authorize(Roles = "admin")]
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var business = await _context.Businesses.FindAsync(id);
            if (business == null)
            {
                return NotFound();
            }
            ViewData["AddressId"] = new SelectList(_context.Addresses, "Id", "City", business.AddressId);
            return View(business);
        }

        // POST: Businesses/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize(Roles = "admin")]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Name,Description,Phone,Website,PictureFileName,AddressId")] Business business)
        {
            if (id != business.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(business);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!BusinessExists(business.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["AddressId"] = new SelectList(_context.Addresses, "Id", "City", business.AddressId);
            return View(business);
        }

        // GET: Businesses/Delete/5
        [Authorize(Roles = "admin")]
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var business = await _context.Businesses
                .Include(b => b.Address)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (business == null)
            {
                return NotFound();
            }

            return View(business);
        }

        // POST: Businesses/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        [Authorize(Roles = "admin")]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var business = await _context.Businesses.FindAsync(id);
            _context.Businesses.Remove(business);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool BusinessExists(int id)
        {
            return _context.Businesses.Any(e => e.Id == id);
        }
    }
}
