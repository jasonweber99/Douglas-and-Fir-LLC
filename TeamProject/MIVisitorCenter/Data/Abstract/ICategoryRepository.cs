using MIVisitorCenter.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MIVisitorCenter.Data.Abstract
{
    public interface ICategoryRepository : IRepository<Category>
    {
        IQueryable<Category> GetAllLodging();

        IQueryable<Category> GetBusinessesByCategory(string category);

        IQueryable<Category> GetAllActivities();

        IQueryable<Category> GetAllArtAndCulture();

        Business GetRandomBusinessByCategory(string category);
    }
}
