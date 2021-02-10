using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace MIVisitorCenter
{
    public partial class LodgingAmenity
    {
        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Column("LodgingID")]
        public int? LodgingId { get; set; }
        [Column("AmenitiesID")]
        public int? AmenitiesId { get; set; }

        [ForeignKey(nameof(AmenitiesId))]
        [InverseProperty(nameof(Amenity.LodgingAmenities))]
        public virtual Amenity Amenities { get; set; }
        [ForeignKey(nameof(LodgingId))]
        [InverseProperty("LodgingAmenities")]
        public virtual Lodging Lodging { get; set; }
    }
}
