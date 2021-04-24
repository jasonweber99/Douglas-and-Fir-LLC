using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MIVisitorCenter.Models
{
    public class Itinerary
    {
        public List<ItineraryDay> Days { get; set; } = new List<ItineraryDay>();

        public Itinerary(int numberOfDays, List<Category> interests, IQueryable<Business> businesses, IQueryable<Lodging> lodging)
        {
            BuildItinerary(numberOfDays, interests, businesses, lodging);
        }

        private void BuildItinerary(int numberOfDays, List<Category> interests, IQueryable<Business> businesses, IQueryable<Lodging> lodging)
        {
            for (int i = 0; i < numberOfDays; i++)
            {
                this.Days.Add(BuildDay(interests, businesses, lodging));
            }
        }

        public ItineraryDay BuildDay(List<Category> interests, IQueryable<Business> businesses, IQueryable<Lodging> lodging)
        {
            var day = new ItineraryDay();
            
            foreach(Time time in Enum.GetValues(typeof(Time)))
            {
                day.ItineraryTimeSlots.Add(new ItineraryTimeSlot { Time = time, Business = null });
            }
            return day;
        }
        
    }
}
