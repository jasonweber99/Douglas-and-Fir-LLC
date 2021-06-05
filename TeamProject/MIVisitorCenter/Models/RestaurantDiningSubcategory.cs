using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace MIVisitorCenter
{
    [Table("RestaurantDiningSubcategory")]
    public partial class RestaurantDiningSubcategory
    {
        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Column("BusinessID")]
        public int? BusinessId { get; set; }
        [Column("DiningSubcategoryID")]
        public int? DiningSubcategoryId { get; set; }

        [ForeignKey(nameof(BusinessId))]
        [InverseProperty("RestaurantDiningSubcategories")]
        public virtual Business Business { get; set; }
        [ForeignKey(nameof(DiningSubcategoryId))]
        [InverseProperty("RestaurantDiningSubcategories")]
        public virtual DiningSubcategory DiningSubcategory { get; set; }
    }
}
