using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace MIVisitorCenter.Models
{
    public partial class ComponentImage
    {
        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Column("ComponentID")]
        public int? ComponentId { get; set; }
        public byte[] Image { get; set; }

        [ForeignKey(nameof(ComponentId))]
        [InverseProperty("ComponentImages")]
        public virtual Component Component { get; set; }
    }
}
