using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace MIVisitorCenter
{
    [Table("BusinessCategory")]
    public partial class BusinessCategory
    {
        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Column("BusinessID")]
        public int? BusinessId { get; set; }
        [Column("CategoryID")]
        public int? CategoryId { get; set; }

        [ForeignKey(nameof(BusinessId))]
        [InverseProperty("BusinessCategories")]
        public virtual Business Business { get; set; }
        [ForeignKey(nameof(CategoryId))]
        [InverseProperty("BusinessCategories")]
        public virtual Category Category { get; set; }
    }
}
