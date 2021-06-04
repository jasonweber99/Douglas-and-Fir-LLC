using System;
using System.IO;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Query;
using MIVisitorCenter.Models;
using Newtonsoft.Json.Linq;
using MIVisitorCenter.Data.Abstract;
using Microsoft.AspNetCore.Http;
using MIVisitorCenter.Utilities;
using System.Text;
using MIVisitorCenter.Areas.Services;

namespace MIVisitorCenter.Controllers
{
    public class BusinessesController : Controller
    {
        private readonly MIVisitorCenterDbContext _context;
        private readonly IAuthorizationService _authorizationService;
        private readonly IBusinessRepository _businessRepo;
        private readonly IPhotoCollectionRepository _photoRepo;
        private readonly IAddressRepository _addressRepo;
        private readonly IHoursRepository _hoursRepository;
        private readonly ICategoryRepository _categoryRepository;
        private readonly IComponentRepository _componentRepo;

        public BusinessesController(MIVisitorCenterDbContext context, 
                                    IAuthorizationService authorizationService, 
                                    IBusinessRepository businessRepo,
                                    IPhotoCollectionRepository photoRepo,
                                    IAddressRepository addressRepo,
                                    IHoursRepository hoursRepository,
                                    ICategoryRepository categoryRepository,
                                    IComponentRepository componentRepository)
        {
            _context = context;
            _authorizationService = authorizationService;
            _businessRepo = businessRepo;
            _photoRepo = photoRepo;
            _addressRepo = addressRepo;
            _hoursRepository = hoursRepository;
            _categoryRepository = categoryRepository;
            _componentRepo = componentRepository;
        }

        // GET: Businesses
        [Authorize(Roles = "admin")]
        public async Task<IActionResult> Index(string sortOption, string cityFilter = null, string categoryFilter = null)
        {
            ViewBag.NameSortOption = string.IsNullOrEmpty(sortOption) ? "name_desc" : "";
            
            var addresses = _context.Addresses.ToArray();
            var cities = new ArrayList();

            foreach (var address in addresses)
            {
                if (!cities.Contains(address.City))
                    cities.Add(address.City);
            }

            cities.Sort();

            ViewData["Cities"] = cities;
            ViewData["Categories"] = _context.Categories.OrderBy(c => c.Name).ToArray();

            var businesses = _context.Businesses.Include(b => b.Address);
            var filteredBusinesses = new List<Business>();
            IQueryable filteredCategories = null;

            if (!string.IsNullOrEmpty(cityFilter) && !string.IsNullOrEmpty(categoryFilter))
            {
                filteredCategories = _context.Categories.Where(b => b.Name == categoryFilter)
                                        .Include(c => c.BusinessCategories)
                                        .ThenInclude(d => d.Business)
                                        .ThenInclude(e => e.Address);
                foreach (Category c in filteredCategories)
                {
                    foreach (BusinessCategory b in c.BusinessCategories)
                        filteredBusinesses = filteredBusinesses.Append(b.Business).ToList();
                }
                filteredBusinesses = filteredBusinesses.Where(a => a.Address.City == cityFilter).ToList();
            }
            else if (!string.IsNullOrEmpty(cityFilter))
                filteredBusinesses = await businesses.Where(a => a.Address.City == cityFilter).ToListAsync();
            else if (!string.IsNullOrEmpty(categoryFilter))
            {
                filteredCategories = _context.Categories.Where(b => b.Name == categoryFilter)
                                                        .Include(c => c.BusinessCategories)
                                                        .ThenInclude(d => d.Business)
                                                        .ThenInclude(e => e.Address);
                foreach (Category c in filteredCategories)
                {
                    foreach (BusinessCategory b in c.BusinessCategories)
                        filteredBusinesses = filteredBusinesses.Append(b.Business).ToList();
                }
            }

            if (filteredBusinesses.Any())
                return View(filteredBusinesses);
            if (string.IsNullOrEmpty(sortOption)) 
                return View(await businesses.ToListAsync());

            var sortedBusinesses = businesses.OrderByDescending(c => c.Name);

            return View(await sortedBusinesses.ToListAsync());
        }

        public IActionResult EatAndDrink()
        {
            ViewData["DiningSubcategories"] = _context.DiningSubcategories.OrderBy(a => a.Name).ToArray();

            var businesses = _context.Categories
                                    .Where(n => n.Name == "Restaurants" || n.Name == "Coffee" || n.Name == "Wineries" || n.Name == "Bars")
                                    .Include(b => b.BusinessCategories)
                                    .ThenInclude(b => b.Business)
                                    .ThenInclude(a => a.Address)
                                    .AsEnumerable()
                                    .GroupBy(c => c.Name);
            return View(businesses);
        }

        [HttpPost]
        public ActionResult EatAndDrink(string[] tags)
        {
            ViewData["DiningSubcategories"] = _context.DiningSubcategories.OrderBy(a => a.Name).ToArray();
            var businesses = _context.Categories
                                    .Where(n => n.Name == "Restaurants" || n.Name == "Coffee" || n.Name == "Wineries" || n.Name == "Bars")
                                    .Include(c => c.BusinessCategories)
                                        .ThenInclude(bc => bc.Business)
                                            .ThenInclude(b => b.Address)
                                    .Include(c => c.BusinessCategories)
                                        .ThenInclude(bc => bc.Business)
                                            .ThenInclude(b => b.RestaurantDiningSubcategories)
                                    .AsEnumerable()
                                    .GroupBy(c => c.Name);

            ViewData["FilteredSubcategories"] = tags;

            return View("EatAndDrink", businesses);
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

        public IActionResult OutdoorRecreation()
        {
            var businesses = _context.Categories
                                    .Where(n => n.Name == "Hiking" || n.Name == "Cycling" || n.Name == "Birding" || n.Name == "Fishing" || n.Name == "Golf" || n.Name == "Disc Golf" || n.Name == "Skating")
                                    .Include(b => b.BusinessCategories)
                                    .ThenInclude(b => b.Business)
                                    .ThenInclude(a => a.Address)
                                    .AsEnumerable()
                                    .GroupBy(c => c.Name);
            return View(businesses);
        }

        public IActionResult WaterTrail()
        {
            //ViewData["Lodging"] = _context.Lodgings.Include(l => l.LodgingAmenities).ThenInclude(l => l.Amenities).Include(l => l.Business).ThenInclude(b => b.Address).Include(l => l.Business).ThenInclude(b => b.BusinessCategories).ThenInclude(b => b.Category);
            var businesses = _context.Categories
                                    .Where(n => n.Name == "WaterTrailRestaurants")
                                    .Include(b => b.BusinessCategories)
                                    .ThenInclude(b => b.Business)
                                    .ThenInclude(a => a.Address)
                                    .AsEnumerable();

            var lodging = _context.Categories
                                    .Where(n => n.Name == "WaterTrailLodging")
                                    .Include(b => b.BusinessCategories)
                                    .ThenInclude(b => b.Business)
                                    .ThenInclude(a => a.Address)
                                    .AsEnumerable();
            ViewBag.Lodging = lodging;

            ViewData["Components"] = _componentRepo.GetAll().Include(i => i.ComponentImages).Include(t => t.ComponentTexts).Where(p => p.Page.Name == "Willamette River Trail").ToArray();

            return View(businesses);
        }

        public IActionResult FoodTrail()
        {
            var businesses = _context.Categories
                                    .Where(n => n.Name == "WaterTrailRestaurants")
                                    .Include(b => b.BusinessCategories)
                                    .ThenInclude(b => b.Business)
                                    .ThenInclude(a => a.Address)
                                    .AsEnumerable();

            var lodging = _context.Categories
                                    .Where(n => n.Name == "WaterTrailLodging")
                                    .Include(b => b.BusinessCategories)
                                    .ThenInclude(b => b.Business)
                                    .ThenInclude(a => a.Address)
                                    .AsEnumerable();

            ViewData["Components"] = _componentRepo.GetAll().Include(i => i.ComponentImages).Include(t => t.ComponentTexts).Where(p => p.Page.Name == "Great Oaks Food Trail").ToArray();

            return View(businesses);
        }

        [HttpGet]
        public IActionResult Lodging()
        {
            ViewData["Amenities"] = _context.Amenities.OrderBy(a => a.Name).ToArray();

            var businesses = _context.Lodgings.Include(l => l.LodgingAmenities).ThenInclude(l => l.Amenities).Include(l => l.Business).ThenInclude(b => b.Address);

            return View(businesses);
        }

        [HttpPost]
        public ActionResult Lodging(string[] tags)
        {
            ViewData["Amenities"] = _context.Amenities.OrderBy(a => a.Name).ToArray();
            var businesses = _context.Lodgings.Include(l => l.LodgingAmenities).ThenInclude(l => l.Amenities).Include(l => l.Business).ThenInclude(b => b.Address);

            if (tags.Length == 0)
            {
                return View("Lodging", businesses);
            }

            var filtered = new List<Lodging>();

            foreach (var b in businesses)
            {
                int tagCount = 0;
                foreach (var la in b.LodgingAmenities)
                {
                    for (var i = 0; i < tags.Length; i++)
                    {
                        if (la.Amenities.Name == tags[i])
                        {
                            tagCount++;
                            if (tags.Length == tagCount)
                            {
                                filtered.Add(b);
                            }
                        }
                    }
                }
            }

            return View("Lodging", filtered);
        }

        // GET: Businesses/Details/5
        [Authorize(Roles = "admin")]
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
            return View();
        }

        // POST: Businesses/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize(Roles = "admin")]
        public async Task<IActionResult> Create([Bind("Name,Description,Phone,Website,AddressId")] Business business, IFormFile PictureFileName)
        {
            var street = Request.Form["street"].ToString();
            var city = Request.Form["city"].ToString();
            var state = Request.Form["state"].ToString();
            var zip = Convert.ToInt32(Request.Form["zip"]);

            var address = new Address
            {
                StreetAddress = street,
                City = city,
                State = state,
                Zip = zip
            };

            await GeocodeAPIHandler.GetData(address);

            int addressId = await _addressRepo.ReturnsIdIfExistsAsync(address);

            if (addressId == 0)
            {
                await _addressRepo.AddOrUpdateAsync(address);
                business.AddressId = address.Id;
            }
            else
            {
                business.AddressId = addressId;
            }

            if (ModelState.IsValid)
            {
                await _businessRepo.AddOrUpdateAsync(business);
                try
                {
                    // Save image to business record using function from BusinessRepository.cs
                    await _businessRepo.UpdateBusiness(business, PictureFileName, null);
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

                return RedirectToAction("Business", business.Id);
            }
            else
            {
                var errors = ModelState.Select(x => x.Value.Errors)
                    .Where(y => y.Count > 0)
                    .ToList();
            }
            return View(business);
        }

        // GET: Businesses/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null) return NotFound();

            await _hoursRepository.CreateSevenDaysForBusinessAsync(id ?? 0);

            var business = _businessRepo.GetBusinessByID(id ?? 0);
            if (business == null) return NotFound();

            var authorizationResult = await _authorizationService.AuthorizeAsync(User, business, "BusinessOwner");
            if (!authorizationResult.Succeeded) return NotFound();

            ViewData["Photos"] = _photoRepo.GetAll().Where(i => i.BusinessId == id).ToArray();
            return View(business);

        }

        // POST: Businesses/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Name,Description,Phone,Website,PictureFileName,AddressId,PhotoCollections")] Business business, IFormFile PictureFileName, IFormCollection PhotoCollections, Address address)
        {
            if (id != business.Id)
            {
                return NotFound();
            }

            var open = Request.Form["sunday-open"];
            var close = Request.Form["sunday-close"];
            if (open == "" || close == "")
            {
                await _hoursRepository.UpdateHoursForBusinessAsync(0, default, default, id);
            }
            else
            {
                var suOpen = Convert.ToDateTime(open);
                var suClose = Convert.ToDateTime(close);
                await _hoursRepository.UpdateHoursForBusinessAsync(0, suOpen, suClose, id);
            }

            open = Request.Form["monday-open"];
            close = Request.Form["monday-close"];
            if (open == "" || close == "")
            {
                await _hoursRepository.UpdateHoursForBusinessAsync(1, default, default, id);
            }
            else
            {
                var moOpen = Convert.ToDateTime(open);
                var moClose = Convert.ToDateTime(close);
                await _hoursRepository.UpdateHoursForBusinessAsync(1, moOpen, moClose, id);
            }

            open = Request.Form["tuesday-open"];
            close = Request.Form["tuesday-close"];
            if (open == "" || close == "")
            {
                await _hoursRepository.UpdateHoursForBusinessAsync(2, default, default, id);
            }
            else
            {
                var tuOpen = Convert.ToDateTime(open);
                var tuClose = Convert.ToDateTime(close);
                await _hoursRepository.UpdateHoursForBusinessAsync(2, tuOpen, tuClose, id);
            }

            open = Request.Form["wednesday-open"];
            close = Request.Form["wednesday-close"];
            if (open == "" || close == "")
            {
                await _hoursRepository.UpdateHoursForBusinessAsync(3, default, default, id);
            }
            else
            {
                var weOpen = Convert.ToDateTime(open);
                var weClose = Convert.ToDateTime(close);
                await _hoursRepository.UpdateHoursForBusinessAsync(3, weOpen, weClose, id);
            }

            open = Request.Form["thursday-open"];
            close = Request.Form["thursday-close"];
            if (open == "" || close == "")
            {
                await _hoursRepository.UpdateHoursForBusinessAsync(4, default, default, id);
            }
            else
            {
                var thOpen = Convert.ToDateTime(open);
                var thClose = Convert.ToDateTime(close);
                await _hoursRepository.UpdateHoursForBusinessAsync(4, thOpen, thClose, id);
            }

            open = Request.Form["friday-open"];
            close = Request.Form["friday-close"];
            if (open == "" || close == "")
            {
                await _hoursRepository.UpdateHoursForBusinessAsync(5, default, default, id);
            }
            else
            {
                var frOpen = Convert.ToDateTime(open);
                var frClose = Convert.ToDateTime(close);
                await _hoursRepository.UpdateHoursForBusinessAsync(5, frOpen, frClose, id);
            }

            open = Request.Form["saturday-open"];
            close = Request.Form["saturday-close"];
            if (open == "" || close == "")
            {
                await _hoursRepository.UpdateHoursForBusinessAsync(6, default, default, id);
            }
            else
            {
                var saOpen = Convert.ToDateTime(open);
                var saClose = Convert.ToDateTime(close);
                await _hoursRepository.UpdateHoursForBusinessAsync(6, saOpen, saClose, id);
            }

            int addressId = await _addressRepo.ReturnsIdIfExistsAsync(address);

            if (addressId == 0)
            {
                await _addressRepo.AddOrUpdateAsync(address);
                business.AddressId = address.Id;
            }
            else
            {
                business.AddressId = addressId;
            }

            if (ModelState.IsValid)
            {
                try
                {  
                    // Save image to business record using function from BusinessRepository.cs
                    await _businessRepo.UpdateBusiness(business, PictureFileName, PhotoCollections);
                    //await _addressRepo.AddOrUpdateAsync(business.Address);
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
                return RedirectToAction("Business", new {id = business.Id});
            }
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

        [HttpGet]
        public JsonResult GetAllBusinesses() {
            //var businesses = _context.BusinessCategories.Include(b => b.Business).Include(c => c.Category);
            var businesses = _categoryRepository.GetAllUniqueBusinesses();

            //JArray array = new JArray(
            //    businesses.DistinctBy(b => b.Business.Id).Select(b => new JObject
            //    {
            //        { "Id", b.Business.Id },
            //        { "Name", b.Business.Name },
            //        { "Category", b.Category.Name },
            //        { "Description", b.Business.Description }
            //    })
            //);

            List<Object> array = new(
                businesses.Select(b => new
                {
                    b.Business.Id,
                    b.Business.Name,
                    Category = b.Category.Name,
                    b.Business.Description
                })
            );

            return Json(array);

            //string json = array.ToString();
            //return json;
        }

        public async Task<IActionResult> Business(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            ViewData["Photos"] = _photoRepo.GetAll().Where(i => i.BusinessId == id).ToArray();
            var business = _businessRepo.GetBusinessByID(id ?? 0);

            if (business == null)
            {
                return NotFound();
            }

            return View(business);
        }
    }
}
