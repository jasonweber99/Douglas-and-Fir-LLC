using MIVisitorCenter.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;

namespace MIVisitorCenter.Data.Abstract
{
    public interface IHoursRepository : IRepository<OperatingHour>
    {
        Task<IList<OperatingHour>> CreateSevenDaysForBusinessAsync(int businessId);
        Task<OperatingHour> UpdateHoursForBusinessAsync(int day, DateTime open, DateTime closed, int businessId);
    }
}