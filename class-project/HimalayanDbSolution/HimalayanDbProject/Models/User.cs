using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace HimalayanDbProject.Models
{
    [Table("User")]
    public partial class User
    {
        public User()
        {
            BlogPosts = new HashSet<BlogPost>();
            Expeditions = new HashSet<Expedition>();
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
        [Column(TypeName = "date")]
        public DateTime? BirthDate { get; set; }
        public bool Verified { get; set; }

        [InverseProperty(nameof(BlogPost.Author))]
        public virtual ICollection<BlogPost> BlogPosts { get; set; }
        [InverseProperty(nameof(Expedition.Creator))]
        public virtual ICollection<Expedition> Expeditions { get; set; }
    }
}
