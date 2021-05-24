using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace MIVisitorCenter.Models
{
    [Table("ComponentText")]
    public partial class ComponentText
    {
        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Column("ComponentID")]
        public int? ComponentId { get; set; }
        [StringLength(4000)]
        public string Text { get; set; }

        [ForeignKey(nameof(ComponentId))]
        [InverseProperty("ComponentTexts")]
        public virtual Component Component { get; set; }
    }
}
