using Microsoft.EntityFrameworkCore;
using MIVisitorCenter.Data.Abstract;
using MIVisitorCenter.Models;
using MIVisitorCenter.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MIVisitorCenter.Data.Concrete
{
    public class DiningSubcategoryRepository : Repository<DiningSubcategory>, IDiningSubcategoryRepository
    {
        public DiningSubcategoryRepository(MIVisitorCenterDbContext ctx) : base(ctx)
        {

        }

        public virtual IEnumerable<DiningSubcategory> GetAllSubcategories()
        {
            return _dbSet.OrderBy(a => a.Name).ToArray();
        }
    }
}