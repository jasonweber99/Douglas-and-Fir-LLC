using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MIVisitorCenter.Models
{
    public class ItineraryBuilderViewModel
    {
        public string[] Categories { get; set; }
        public int Length { get; set; }
        public Itinerary Itinerary { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string ImageUrl { get; set; }
    }
}
