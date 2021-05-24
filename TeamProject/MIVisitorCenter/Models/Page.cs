using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace MIVisitorCenter.Models
{
    [Table("Page")]
    public partial class Page
    {
        public Page()
        {
            Components = new HashSet<Component>();
        }

        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [StringLength(64)]
        public string Name { get; set; }
        [StringLength(64)]
        public string NormalizedName { get; set; }

        [InverseProperty(nameof(Component.Page))]
        public virtual ICollection<Component> Components { get; set; }
    }
}
