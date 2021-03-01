using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace MIVisitorCenter
{
    [Table("Lodging")]
    public partial class Lodging
    {
        public Lodging()
        {
            LodgingAmenities = new HashSet<LodgingAmenity>();
        }

        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Column("BusinessID")]
        public int BusinessId { get; set; }
        public int Price { get; set; }
        public int? Rating { get; set; }

        [ForeignKey(nameof(BusinessId))]
        [InverseProperty("Lodgings")]
        public virtual Business Business { get; set; }
        [InverseProperty(nameof(LodgingAmenity.Lodging))]
        public virtual ICollection<LodgingAmenity> LodgingAmenities { get; set; }
    }
}
