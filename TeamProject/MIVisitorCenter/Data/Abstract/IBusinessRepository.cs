using MIVisitorCenter.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;

namespace MIVisitorCenter.Data.Abstract
{
    public interface IBusinessRepository : IRepository<Business>
    {
        Business GetBusinessByID(int id);
        Task UpdateBusiness(Business business, IFormFile profilePicture, IFormCollection images);

    }
}