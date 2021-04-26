using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MIVisitorCenter.Models
{
    public class ItineraryDay
    {
        public List<ItineraryTimeSlot> ItineraryTimeSlots { get; set; }

        public ItineraryDay()
        {
            ItineraryTimeSlots = new List<ItineraryTimeSlot>();
        }

    }
}
