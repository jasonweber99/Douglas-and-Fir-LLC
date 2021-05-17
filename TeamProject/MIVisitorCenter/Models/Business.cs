using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace MIVisitorCenter
{
    [Table("Business")]
    public partial class Business
    {
        public Business()
        {
            BusinessCategories = new HashSet<BusinessCategory>();
            BusinessEvents = new HashSet<BusinessEvent>();
            Lodgings = new HashSet<Lodging>();
            OperatingHours = new HashSet<OperatingHour>();
            PhotoCollections = new HashSet<PhotoCollection>();
            RestaurantDiningSubcategories = new HashSet<RestaurantDiningSubcategory>();
        }

        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Required]
        [StringLength(64)]
        public string Name { get; set; }
        [StringLength(1024)]
        public string Description { get; set; }
        [StringLength(32)]
        public string Phone { get; set; }
        [StringLength(128)]
        public string Website { get; set; }
        public byte[] PictureFileName { get; set; }
        [Column("AddressID")]
        public int? AddressId { get; set; }

        [ForeignKey(nameof(AddressId))]
        [InverseProperty("Businesses")]
        public virtual Address Address { get; set; }
        [InverseProperty(nameof(BusinessCategory.Business))]
        public virtual ICollection<BusinessCategory> BusinessCategories { get; set; }
        [InverseProperty(nameof(BusinessEvent.Business))]
        public virtual ICollection<BusinessEvent> BusinessEvents { get; set; }
        [InverseProperty(nameof(Lodging.Business))]
        public virtual ICollection<Lodging> Lodgings { get; set; }
        [InverseProperty(nameof(OperatingHour.Business))]
        public virtual ICollection<OperatingHour> OperatingHours { get; set; }
        [InverseProperty(nameof(PhotoCollection.Business))]
        public virtual ICollection<PhotoCollection> PhotoCollections { get; set; }
        [InverseProperty(nameof(RestaurantDiningSubcategory.Business))]
        public virtual ICollection<RestaurantDiningSubcategory> RestaurantDiningSubcategories { get; set; }
    }
}
