using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;
using MIVisitorCenter.Attributes;

#nullable disable

namespace MIVisitorCenter
{
    [Table("Event")]
    public partial class Event
    {
        public Event()
        {
            BusinessEvents = new HashSet<BusinessEvent>();
            EventAddresses = new HashSet<EventAddress>();
        }

        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Required]
        [StringLength(128)]
        public string Name { get; set; }
        [Column(TypeName = "text")]
        public string Description { get; set; }
        [Column(TypeName = "datetime")]
        public DateTime StartDate { get; set; }
        [Column(TypeName = "datetime")]
        [EndDateGreaterThanStartDate(ErrorMessage = "Event cannot end before it starts")]
        public DateTime? EndDate { get; set; }

        [InverseProperty(nameof(BusinessEvent.Event))]
        public virtual ICollection<BusinessEvent> BusinessEvents { get; set; }
        [InverseProperty(nameof(EventAddress.Event))]
        public virtual ICollection<EventAddress> EventAddresses { get; set; }
    }
}
