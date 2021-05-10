using MIVisitorCenter.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;

namespace MIVisitorCenter.Data.Abstract
{
    public interface IAddressRepository : IRepository<Address>
    {
        Task<int> ReturnsIdIfExistsAsync(Address address);
    }
}