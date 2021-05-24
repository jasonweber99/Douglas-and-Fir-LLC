using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
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
            int interestsUsed = 0;
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


                // Add restaurant for breakfast
                day.ItineraryTimeSlots[1].Business = GetNearestBusinessFromCategory(day.ItineraryTimeSlots[0].Business, businesses, "Restaurants");

                // Add restaurants for lunch and dinner
                do
                {
                    day.ItineraryTimeSlots[3].Business = GetRandomBusinessFromCategory("Restaurants", businesses);
                    day.ItineraryTimeSlots[6].Business = GetRandomBusinessFromCategory("Restaurants", businesses);
                } while (DayContainsDuplicates(day));

                // Add activities to each open ItineraryTimeSlot if there are enough interests to fill each slot
                if (interests.Count() >= numberOfDays * 3)
                {
                    do
                    {
                        day.ItineraryTimeSlots[2].Business = GetRandomBusinessFromCategory(interests[(i * 3)].Name, businesses);
                        day.ItineraryTimeSlots[2].Category = interests[(i * 3)].Name;
                        day.ItineraryTimeSlots[4].Business = GetRandomBusinessFromCategory(interests[(i * 3) + 1].Name, businesses);
                        day.ItineraryTimeSlots[4].Category = interests[(i * 3) + 1].Name;
                        day.ItineraryTimeSlots[5].Business = GetRandomBusinessFromCategory(interests[(i * 3) + 2].Name, businesses);
                        day.ItineraryTimeSlots[5].Category = interests[(i * 3) + 2].Name;
                    } while (DayContainsDuplicates(day)); 
                    days.Add(day);
                    continue;
                }

                if (interests.Count() == 1)
                {
                    do
                    {
                        day.ItineraryTimeSlots[2].Business = GetRandomBusinessFromCategory(interests[0].Name, businesses);
                        day.ItineraryTimeSlots[2].Category = interests[0].Name;
                        day.ItineraryTimeSlots[4].Business = GetRandomActivity(businesses);
                        day.ItineraryTimeSlots[4].Category = day.ItineraryTimeSlots[4].Business.BusinessCategories.FirstOrDefault().Category.Name;
                        day.ItineraryTimeSlots[5].Business = GetRandomActivity(businesses);
                        day.ItineraryTimeSlots[5].Category = day.ItineraryTimeSlots[5].Business.BusinessCategories.FirstOrDefault().Category.Name;
                    } while (DayContainsDuplicates(day));
                    days.Add(day);
                    continue;
                }

                double interestsLeft = interests.Count() - interestsUsed;
                var interestsThisDay = Math.Ceiling(interestsLeft / (numberOfDays - i));

                if (interestsThisDay >= 3)
                {
                    day.ItineraryTimeSlots[2].Business = GetRandomBusinessFromCategory(interests[interestsUsed].Name, businesses);
                    day.ItineraryTimeSlots[2].Category = interests[interestsUsed].Name;
                    interestsUsed++;
                    day.ItineraryTimeSlots[4].Business = GetRandomBusinessFromCategory(interests[interestsUsed].Name, businesses);
                    day.ItineraryTimeSlots[4].Category = interests[interestsUsed].Name;
                    interestsUsed++;
                    day.ItineraryTimeSlots[5].Business = GetRandomBusinessFromCategory(interests[interestsUsed].Name, businesses);
                    day.ItineraryTimeSlots[5].Category = interests[interestsUsed].Name;
                    interestsUsed++;
                    days.Add(day);
                    continue;
                }
                if (interestsThisDay == 2)
                {
                    day.ItineraryTimeSlots[2].Business = GetRandomBusinessFromCategory(interests[interestsUsed].Name, businesses);
                    day.ItineraryTimeSlots[2].Category = interests[interestsUsed].Name;
                    interestsUsed++;
                    day.ItineraryTimeSlots[4].Business = GetRandomBusinessFromCategory(interests[interestsUsed].Name, businesses);
                    day.ItineraryTimeSlots[4].Category = interests[interestsUsed].Name;
                    interestsUsed++;
                    day.ItineraryTimeSlots[5].Business = GetRandomActivity(businesses);
                    day.ItineraryTimeSlots[5].Category = day.ItineraryTimeSlots[5].Business.BusinessCategories.FirstOrDefault().Category.Name;
                    days.Add(day);
                    continue;
                }
                if (interestsThisDay == 1)
                {
                    day.ItineraryTimeSlots[2].Business = GetRandomBusinessFromCategory(interests[interestsUsed].Name, businesses);
                    day.ItineraryTimeSlots[2].Category = interests[interestsUsed].Name;
                    interestsUsed++;
                    day.ItineraryTimeSlots[4].Business = GetRandomActivity(businesses);
                    day.ItineraryTimeSlots[4].Category = day.ItineraryTimeSlots[4].Business.BusinessCategories.FirstOrDefault().Category.Name;
                    day.ItineraryTimeSlots[5].Business = GetRandomActivity(businesses);
                    day.ItineraryTimeSlots[5].Category = day.ItineraryTimeSlots[5].Business.BusinessCategories.FirstOrDefault().Category.Name;
                    days.Add(day);
                    continue;
                }

                do
                {
                    day.ItineraryTimeSlots[2].Business = GetRandomActivity(businesses);
                    if (day.ItineraryTimeSlots[2].Business.BusinessCategories.Count != 0)
                    {
                        day.ItineraryTimeSlots[2].Category = day.ItineraryTimeSlots[2].Business.BusinessCategories.FirstOrDefault().Category.Name;
                    }
                    day.ItineraryTimeSlots[4].Business = GetRandomActivity(businesses);
                    if (day.ItineraryTimeSlots[4].Business.BusinessCategories.Count != 0)
                    {
                        day.ItineraryTimeSlots[4].Category = day.ItineraryTimeSlots[2].Business.BusinessCategories.FirstOrDefault().Category.Name;
                    }
                    day.ItineraryTimeSlots[5].Business = GetRandomActivity(businesses);
                    if (day.ItineraryTimeSlots[2].Business.BusinessCategories.Count != 0)
                    {
                        day.ItineraryTimeSlots[2].Category = day.ItineraryTimeSlots[2].Business.BusinessCategories.FirstOrDefault().Category.Name;
                    }
                } while (DayContainsDuplicates(day));

                // Set breakfast to lodging if staying at bed & breakfast
                if (day.ItineraryTimeSlots[0].Business.Name == "MaMere's Guest House" || day.ItineraryTimeSlots[0].Business.Name == "Airlie Farm Bed & Breakfast")
                {
                    day.ItineraryTimeSlots[1].Business = day.ItineraryTimeSlots[0].Business;
                }

                days.Add(day); 
            }

            return days;
        }

        private bool DayContainsDuplicates(ItineraryDay day)
        {
            for (var i = 0; i < day.ItineraryTimeSlots.Count; i++)
            {
                for (var j = 0; j < day.ItineraryTimeSlots.Count; j++)
                {
                    if (j == i || day.ItineraryTimeSlots[i].Business == null || day.ItineraryTimeSlots[j].Business == null) { continue; }

                    if (day.ItineraryTimeSlots[i].Business.Name == day.ItineraryTimeSlots[j].Business.Name)
                    {
                        return true;
                    }
                    if (i == 2 || i == 4 || i == 5)
                    {
                        if (day.ItineraryTimeSlots[i].Business.BusinessCategories.FirstOrDefault().Category.Name == day.ItineraryTimeSlots[j].Business.BusinessCategories.FirstOrDefault().Category.Name)
                        {
                            return true;
                        }
                    }
                }
            }

            return false;
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

        private Business GetNearestBusinessFromCategory(Business business, IEnumerable<BusinessCategory> businesses, string category)
        {
            var businessList = businesses.Where(c => c.Category.Name == category).ToList();
            int index = 0;
            double shortestDistance = double.MaxValue;

            for (var i = 0; i < businessList.Count; i++)
            {
                double distance = GetDistanceBetweenTwoBusinesses(business, businessList[i].Business);
                if (distance < shortestDistance)
                {
                    index = i;
                    shortestDistance = distance;
                }
            }

            return businessList[index].Business;
        }

        private double GetDistanceBetweenTwoBusinesses(Business business1, Business business2)
        {
            double lat1 = business1.Address.Latitude;
            double lat2 = business2.Address.Latitude;
            double lng1 = business1.Address.Longitude;
            double lng2 = business2.Address.Longitude;

            double distance = HaversineDistance(lat1, lat2, lng1, lng2);

            return distance;
        }

        private double HaversineDistance(double lat1, double lat2, double lng1, double lng2)
        {
            double r = 3960;
            var lat = toRadians(lat2 - lat1);
            var lng = toRadians(lng2 - lng1);

            double a = Math.Sin(lat / 2) * Math.Sin(lat / 2) + Math.Cos(toRadians(lat1)) * Math.Cos(toRadians(lat2)) * Math.Sin(lng / 2) * Math.Sin(lng / 2);
            double c = 2 * Math.Asin(Math.Min(1, Math.Sqrt(a)));
            double d = r * c;

            return d;
        }
        
        private double toRadians(double angle)
        {
            return Math.PI * angle / 180.0;
        }
    }
}
