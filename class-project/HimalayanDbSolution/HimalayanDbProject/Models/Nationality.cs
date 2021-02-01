using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace HimalayanDbProject.Models
{
    [Table("Nationality")]
    public partial class Nationality
    {
        public Nationality()
        {
            Members = new HashSet<Member>();
        }

        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [StringLength(30)]
        public string Name { get; set; }

        [InverseProperty(nameof(Member.Nationality))]
        public virtual ICollection<Member> Members { get; set; }
    }
}
