using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace HimalayanDbProject.Models
{
    [Table("Member")]
    public partial class Member
    {
        public Member()
        {
            ExpeditionMembers = new HashSet<ExpeditionMember>();
        }

        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Required]
        [StringLength(30)]
        public string FirstName { get; set; }
        [Required]
        [StringLength(30)]
        public string LastName { get; set; }
        [Column("NationalityID")]
        public int? NationalityId { get; set; }
        [Column(TypeName = "date")]
        public DateTime? BirthDate { get; set; }

        [ForeignKey(nameof(NationalityId))]
        [InverseProperty("Members")]
        public virtual Nationality Nationality { get; set; }
        [InverseProperty(nameof(ExpeditionMember.Member))]
        public virtual ICollection<ExpeditionMember> ExpeditionMembers { get; set; }
    }
}
