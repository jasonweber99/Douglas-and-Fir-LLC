using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace MIVisitorCenter
{
    public partial class Amenity
    {
        public Amenity()
        {
            LodgingAmenities = new HashSet<LodgingAmenity>();
        }

        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Required]
        [StringLength(64)]
        public string Name { get; set; }

        [InverseProperty(nameof(LodgingAmenity.Amenities))]
        public virtual ICollection<LodgingAmenity> LodgingAmenities { get; set; }
    }
}
