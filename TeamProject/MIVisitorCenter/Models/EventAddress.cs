using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace MIVisitorCenter
{
    [Table("EventAddress")]
    public partial class EventAddress
    {
        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Column("EventID")]
        public int? EventId { get; set; }
        [Column("AddressID")]
        public int? AddressId { get; set; }

        [ForeignKey(nameof(AddressId))]
        [InverseProperty("EventAddresses")]
        public virtual Address Address { get; set; }
        [ForeignKey(nameof(EventId))]
        [InverseProperty("EventAddresses")]
        public virtual Event Event { get; set; }
    }
}
