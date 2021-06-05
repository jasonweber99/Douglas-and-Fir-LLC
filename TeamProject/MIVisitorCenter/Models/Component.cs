using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace MIVisitorCenter.Models
{
    [Table("Component")]
    public partial class Component
    {
        public Component()
        {
            ComponentImages = new HashSet<ComponentImage>();
        }

        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Column("PageID")]
        public int? PageId { get; set; }
        [StringLength(64)]
        public string Name { get; set; }
        [StringLength(32)]
        public string Type { get; set; }
        [StringLength(1024)]
        public string Description { get; set; }

        [ForeignKey(nameof(PageId))]
        [InverseProperty("Components")]
        public virtual Page Page { get; set; }
        [InverseProperty(nameof(ComponentImage.Component))]
        public virtual ICollection<ComponentImage> ComponentImages { get; set; }
        [InverseProperty(nameof(ComponentText.Component))]
        public virtual ComponentText ComponentTexts { get; set; }
    }
}
