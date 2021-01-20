using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace HimalayanDbProject.Models
{
    [Table("ExpeditionMember")]
    public partial class ExpeditionMember
    {
        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Column("ExpeditionID")]
        public int? ExpeditionId { get; set; }
        [Column("MemberID")]
        public int? MemberId { get; set; }
        [Column("RoleID")]
        public int? RoleId { get; set; }
        [Column(TypeName = "decimal(18, 0)")]
        public decimal? HighPointMeters { get; set; }
        public bool? OxygenUsed { get; set; }

        [ForeignKey(nameof(ExpeditionId))]
        [InverseProperty("ExpeditionMembers")]
        public virtual Expedition Expedition { get; set; }
        [ForeignKey(nameof(MemberId))]
        [InverseProperty("ExpeditionMembers")]
        public virtual Member Member { get; set; }
        [ForeignKey(nameof(RoleId))]
        [InverseProperty("ExpeditionMembers")]
        public virtual Role Role { get; set; }
    }
}
