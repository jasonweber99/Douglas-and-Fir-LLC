using MIVisitorCenter.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MIVisitorCenter.Data.Abstract
{
    public interface ICategoryRepository : IRepository<BusinessCategory>
    {
        IEnumerable<BusinessCategory> GetAllMIBusinesses();
        IEnumerable<BusinessCategory> GetAllLodging();
        IEnumerable<BusinessCategory> GetAllActivities();
        IEnumerable<BusinessCategory> GetAllArtAndCulture();

        IEnumerable<BusinessCategory> GetBusinessesByCategory(string category);
        List<Category> GetCategoryListFromStringList(List<string> str);
    }
}
