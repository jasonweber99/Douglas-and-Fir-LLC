using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace MIVisitorCenter
{
    [Table("BusinessEvent")]
    public partial class BusinessEvent
    {
        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Column("BusinessID")]
        public int? BusinessId { get; set; }
        [Column("EventID")]
        public int? EventId { get; set; }

        [ForeignKey(nameof(BusinessId))]
        [InverseProperty("BusinessEvents")]
        public virtual Business Business { get; set; }
        [ForeignKey(nameof(EventId))]
        [InverseProperty("BusinessEvents")]
        public virtual Event Event { get; set; }
    }
}
