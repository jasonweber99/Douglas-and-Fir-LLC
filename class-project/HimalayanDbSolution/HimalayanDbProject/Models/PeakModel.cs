using System;
using System.Linq;
using System.Collections.Generic;

namespace HimalayanDbProject.Models
{    public partial class PeakModel
    {
        public IEnumerable<Expedition> expeditions {get; set;}
        public IEnumerable<IGrouping<string, Expedition>> sortedExpeditions {get; set;}
    }
}
