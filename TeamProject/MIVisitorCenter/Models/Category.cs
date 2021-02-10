using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace MIVisitorCenter
{
    [Table("Category")]
    public partial class Category
    {
        public Category()
        {
            BusinessCategories = new HashSet<BusinessCategory>();
        }

        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Required]
        [StringLength(32)]
        public string Name { get; set; }

        [InverseProperty(nameof(BusinessCategory.Category))]
        public virtual ICollection<BusinessCategory> BusinessCategories { get; set; }
    }
}
