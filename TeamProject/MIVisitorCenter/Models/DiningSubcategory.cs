using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace MIVisitorCenter
{
    [Table("DiningSubcategory")]
    public partial class DiningSubcategory
    {
        public DiningSubcategory()
        {
            RestaurantDiningSubcategories = new HashSet<RestaurantDiningSubcategory>();
        }

        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Required]
        [StringLength(64)]
        public string Name { get; set; }

        [InverseProperty(nameof(RestaurantDiningSubcategory.DiningSubcategory))]
        public virtual ICollection<RestaurantDiningSubcategory> RestaurantDiningSubcategories { get; set; }
    }
}
