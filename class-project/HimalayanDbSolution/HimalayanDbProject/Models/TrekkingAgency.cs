using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace HimalayanDbProject.Models
{
    [Table("TrekkingAgency")]
    public partial class TrekkingAgency
    {
        public TrekkingAgency()
        {
            Expeditions = new HashSet<Expedition>();
        }

        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [StringLength(100)]
        public string Name { get; set; }

        [InverseProperty(nameof(Expedition.TrekkingAgency))]
        public virtual ICollection<Expedition> Expeditions { get; set; }
    }
}
