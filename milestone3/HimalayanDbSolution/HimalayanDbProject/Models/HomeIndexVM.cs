using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HimalayanDbProject.Models
{
    public class HomeIndexVM
    {
        public int Rank { set; get; }
        public string Name { set; get; }
        public int Height { set; get; }
        public int? FirstClimbed { set; get; }
        public int NumExpeditions { set; get; }
    }
}
