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
    public class HoursRepository : Repository<OperatingHour>, IHoursRepository
    {
        public HoursRepository(MIVisitorCenterDbContext ctx) : base(ctx)
        {

        }

        public virtual async Task<IList<OperatingHour>> CreateSevenDaysForBusinessAsync(int businessId)
        {
            if (businessId == 0)
            {
                return null;
            }

            var hours = new List<OperatingHour>();

            foreach (var h in _dbSet)
            {
                if (h.BusinessId == businessId)
                {
                    hours.Add(h);
                }
            }

            for (int i = hours.Count; i < 7; i++)
            {
                var opHour = new OperatingHour
                {
                    Day = i,
                    BusinessId = businessId
                };
                _context.Add(opHour);
                await _context.SaveChangesAsync();
                hours.Add(opHour);
            }

            return hours;
        }

        public virtual async Task<OperatingHour> UpdateHoursForBusinessAsync(int day, DateTime open, DateTime close, int businessId)
        {
            var opHour = _dbSet.Where(o => o.BusinessId == businessId && o.Day == day).FirstOrDefault();

            if (opHour != null)
            {
                if (open == default || close == default)
                {
                    opHour.Open = null;
                    opHour.Close = null;
                    _context.Update(opHour);
                    await _context.SaveChangesAsync();
                    return opHour;
                }

                opHour.Open = open;
                opHour.Close = close;

                _context.Update(opHour);
                await _context.SaveChangesAsync();
            }

            return opHour;
        }
    }
}

        