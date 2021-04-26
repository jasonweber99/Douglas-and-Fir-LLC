using Microsoft.EntityFrameworkCore;
using MIVisitorCenter.Data.Abstract;
using MIVisitorCenter.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MIVisitorCenter.Data.Concrete
{
    public class CategoryRepository : Repository<BusinessCategory>, ICategoryRepository
    {
        public CategoryRepository(MIVisitorCenterDbContext ctx) : base(ctx)
        {

        }

        public virtual IEnumerable<BusinessCategory> GetAllMIBusinesses()
        {
            return _dbSet.Where(n => n.Category.Name != "WaterTrailLodging" &&
                n.Category.Name != "WaterTrailRestaurants").Include(c => c.Business).ThenInclude(b => b.Address).Include(c => c.Category);
        }

        public virtual IEnumerable<BusinessCategory> GetAllLodging()
        {
            return _dbSet.Where(c => c.Category.Name == "Lodging").Include(c => c.Business).ThenInclude(b => b.Address).Include(c => c.Category).AsEnumerable();
        }

        public virtual IEnumerable<BusinessCategory> GetBusinessesByCategory(string category)
        {
            return _dbSet.Where(c => c.Category.Name == category).Include(c => c.Business).ThenInclude(b => b.Address).Include(c => c.Category).AsQueryable();
        }

        public virtual IEnumerable<BusinessCategory> GetAllActivities()
        {
            return _dbSet.Where(n => n.Category.Name == "Hiking" ||
                n.Category.Name == "Cycling" ||
                n.Category.Name == "Birding" ||
                n.Category.Name == "Fishing" ||
                n.Category.Name == "Wineries" ||
                n.Category.Name == "Golf").Include(c => c.Business).ThenInclude(b => b.Address).Include(c => c.Category);
        }

        public virtual IEnumerable<BusinessCategory> GetAllArtAndCulture()
        {
            return _dbSet.Where(n => n.Category.Name == "Historic Sites & Museums" ||
                n.Category.Name == "Art Galleries" ||
                n.Category.Name == "Cinemas & Performing Arts").Include(c => c.Business).ThenInclude(b => b.Address).Include(c => c.Category);
        }

        public virtual List<Category> GetCategoryListFromStringList(List<string> str)
        {
            var categories = new List<Category>();

            foreach (var s in str)
            {
                var cat = _dbSet.Where(c => c.Category.Name == s).Include(c => c.Category).FirstOrDefault();
                categories.Add(cat.Category);
            }

            return categories;
        }
    }
}