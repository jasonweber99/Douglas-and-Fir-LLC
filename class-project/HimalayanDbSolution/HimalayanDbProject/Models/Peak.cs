using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace HimalayanDbProject.Models
{
    [Table("Peak")]
    public partial class Peak
    {
        public Peak()
        {
            Expeditions = new HashSet<Expedition>();
        }

        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Required]
        [StringLength(30)]
        public string Name { get; set; }
        public int Height { get; set; }
        public bool ClimbingStatus { get; set; }
        public int? FirstAscentYear { get; set; }

        [InverseProperty(nameof(Expedition.Peak))]
        public virtual ICollection<Expedition> Expeditions { get; set; }
    }
}
