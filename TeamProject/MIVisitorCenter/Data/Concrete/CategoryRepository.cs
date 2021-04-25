using MIVisitorCenter.Data.Abstract;
using MIVisitorCenter.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MIVisitorCenter.Data.Concrete
{
    public class CategoryRepository : Repository<Category>, ICategoryRepository
    {
        public CategoryRepository(MIVisitorCenterDbContext ctx) : base(ctx)
        {

        }

        public virtual IQueryable<Category> GetAllLodging()
        {
            return _dbSet.Where(c => c.Name == "Lodging").AsQueryable();
        }

        public virtual IQueryable<Category> GetBusinessesByCategory(string category)
        {
            return _dbSet.Where(c => c.Name == category).AsQueryable();
        }

        public virtual IQueryable<Category> GetAllActivities()
        {
            return _dbSet.Where(n => n.Name == "Hiking" ||
                n.Name == "Cycling" ||
                n.Name == "Birding" ||
                n.Name == "Fishing" ||
                n.Name == "Wineries" ||
                n.Name == "Golf");
        }

        public virtual IQueryable<Category> GetAllArtAndCulture()
        {
            return _dbSet.Where(n => n.Name == "Historic Sites & Museums" ||
                n.Name == "Art Galleries" ||
                n.Name == "Cinemas & Performing Arts");
        }

        public virtual Business GetRandomBusinessByCategory(string category)
        {
            Random random = new Random();
            var businesses = _dbSet.Where(c => c.Name == category);
            int index = random.Next(businesses.ElementAt(0).BusinessCategories.Count());
            return businesses.ElementAt(0).BusinessCategories.ElementAt(index).Business;
        }
    }
}