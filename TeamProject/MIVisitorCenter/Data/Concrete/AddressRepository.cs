using System.IO;
using MIVisitorCenter.Data.Abstract;
using MIVisitorCenter.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;

namespace MIVisitorCenter.Data.Concrete
{
    public class AddressRepository : Repository<Address>, IAddressRepository
    {
        public AddressRepository(MIVisitorCenterDbContext ctx) : base(ctx)
        {

        }

        public virtual async Task<int> ReturnsIdIfExistsAsync(Address address)
        {
            foreach (var a in _dbSet)
            {
                if (a.StreetAddress == address.StreetAddress && a.City == address.City && a.State == address.State && a.Zip == address.Zip)
                {
                    return a.Id;
                }
            }

            return 0;
        }
    }
}

        