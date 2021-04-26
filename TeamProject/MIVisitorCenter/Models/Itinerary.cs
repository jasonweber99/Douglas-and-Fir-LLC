using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MIVisitorCenter.Models
{
    public class Itinerary
    {
        public List<ItineraryDay> Days { get; set; } = new List<ItineraryDay>();

        public Itinerary(int numberOfDays, List<Category> interests, IEnumerable<BusinessCategory> businesses, IEnumerable<BusinessCategory> lodging)
        {
            this.Days = BuildDays(numberOfDays, interests, businesses, lodging);
        }

        public List<ItineraryDay> BuildDays(int numberOfDays, List<Category> interests, IEnumerable<BusinessCategory> businesses, IEnumerable<BusinessCategory> lodging)
        {
            var days = new List<ItineraryDay>();
            for (var i = 0; i < numberOfDays; i++)
            {
                var day = new ItineraryDay();

                foreach (Time time in Enum.GetValues(typeof(Time)))
                {
                    day.ItineraryTimeSlots.Add(new ItineraryTimeSlot { Time = time, Business = null });
                }

                Random random = new Random();

                // Add lodging to first time slot
                day.ItineraryTimeSlots[0].Business = lodging.ElementAt(random.Next(lodging.Count())).Business;

                // Add restaurants for breakfast, lunch, and dinner
                day.ItineraryTimeSlots[1].Business = GetRandomBusinessFromCategory("Restaurants", businesses);
                day.ItineraryTimeSlots[3].Business = GetRandomBusinessFromCategory("Restaurants", businesses);
                day.ItineraryTimeSlots[6].Business = GetRandomBusinessFromCategory("Restaurants", businesses);

                // Add activities to each open ItineraryTimeSlot if there are enough interests to fill each slot
                if (interests.Count() >= numberOfDays * 3)
                {
                    day.ItineraryTimeSlots[2].Business = GetRandomBusinessFromCategory(interests[(i * 3)].Name, businesses);
                    day.ItineraryTimeSlots[4].Business = GetRandomBusinessFromCategory(interests[(i * 3) + 1].Name, businesses);
                    day.ItineraryTimeSlots[5].Business = GetRandomBusinessFromCategory(interests[(i * 3) + 2].Name, businesses);
                }
                else if (interests.Count() == 3)
                {
                    day.ItineraryTimeSlots[2].Business = GetRandomBusinessFromCategory(interests[i * 2].Name, businesses);
                    day.ItineraryTimeSlots[4].Business = GetRandomBusinessFromCategory(interests[1].Name, businesses);
                    day.ItineraryTimeSlots[5].Business = GetRandomActivity(businesses);
                }
                else if (interests.Count() == 5)
                {
                    day.ItineraryTimeSlots[2].Business = GetRandomBusinessFromCategory(interests[i * 2].Name, businesses);
                    day.ItineraryTimeSlots[4].Business = GetRandomBusinessFromCategory(interests[(i * 2) + 1].Name, businesses);
                    day.ItineraryTimeSlots[5].Business = GetRandomBusinessFromCategory(interests[4].Name, businesses);
                }
                else if (interests.Count() == 4)
                {
                    day.ItineraryTimeSlots[2].Business = GetRandomBusinessFromCategory(interests[i * 2].Name, businesses);
                    day.ItineraryTimeSlots[4].Business = GetRandomBusinessFromCategory(interests[(i * 2) + 1].Name, businesses);
                    day.ItineraryTimeSlots[5].Business = GetRandomActivity(businesses);
                }
                else if (interests.Count() == 2)
                {
                    day.ItineraryTimeSlots[2].Business = GetRandomBusinessFromCategory(interests[0].Name, businesses);
                    day.ItineraryTimeSlots[4].Business = GetRandomBusinessFromCategory(interests[1].Name, businesses);
                    day.ItineraryTimeSlots[5].Business = GetRandomActivity(businesses);
                }
                else if (interests.Count() == 1)
                {
                    day.ItineraryTimeSlots[2].Business = GetRandomBusinessFromCategory(interests[0].Name, businesses);
                    day.ItineraryTimeSlots[4].Business = GetRandomActivity(businesses);
                    day.ItineraryTimeSlots[5].Business = GetRandomActivity(businesses);
                }else if (interests.Count() == 0)
                {
                    day.ItineraryTimeSlots[2].Business = GetRandomActivity(businesses);
                    day.ItineraryTimeSlots[4].Business = GetRandomActivity(businesses); 
                    day.ItineraryTimeSlots[5].Business = GetRandomActivity(businesses);
                }

                days.Add(day); 
            }
            
            return days;
        }

        private Business GetRandomActivity(IEnumerable<BusinessCategory> allBusinesses)
        {
            Random random = new Random();
            var activities = allBusinesses.Where(c => c.Category.Name == "Hiking" ||
                c.Category.Name == "Cycling" ||
                c.Category.Name == "Birding" ||
                c.Category.Name == "Fishing" ||
                c.Category.Name == "Wineries" ||
                c.Category.Name == "Golf" ||
                c.Category.Name == "Wineries" ||
                c.Category.Name == "Historic Sites & Museums" ||
                c.Category.Name == "Art Galleries" ||
                c.Category.Name == "Cinemas & Performing Arts");
            int index = random.Next(activities.Count());
            return activities.ElementAt(index).Business;
        }

        private Business GetRandomBusinessFromCategory(string category, IEnumerable<BusinessCategory> allBusinesses)
        {
            Random random = new Random();
            var businesses = allBusinesses.Where(c => c.Category.Name == category);
            int index = random.Next(businesses.Count());
            return businesses.ElementAt(index).Business;
        }
    }
}
