using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace HimalayanDbProject.Models
{
    [Table("BlogPost")]
    public partial class BlogPost
    {
        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [StringLength(100)]
        public string Title { get; set; }
        [Column("AuthorID")]
        public int? AuthorId { get; set; }
        [Column(TypeName = "date")]
        public DateTime? DatePosted { get; set; }
        [Column(TypeName = "date")]
        public DateTime? DateEdited { get; set; }
        [Column(TypeName = "text")]
        public string Content { get; set; }

        [ForeignKey(nameof(AuthorId))]
        [InverseProperty(nameof(User.BlogPosts))]
        public virtual User Author { get; set; }
    }
}
