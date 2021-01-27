using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace HimalayanDbProject.Models
{
    [Table("Role")]
    public partial class Role
    {
        public Role()
        {
            ExpeditionMembers = new HashSet<ExpeditionMember>();
        }

        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [StringLength(10)]
        public string Name { get; set; }

        [InverseProperty(nameof(ExpeditionMember.Role))]
        public virtual ICollection<ExpeditionMember> ExpeditionMembers { get; set; }
    }
}
