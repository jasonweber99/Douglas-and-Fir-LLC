using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace MIVisitorCenter
{
    [Table("PhotoCollection")]
    public partial class PhotoCollection
    {
        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Column("BusinessID")]
        public int? BusinessId { get; set; }
        public byte[] Photo { get; set; }

        [ForeignKey(nameof(BusinessId))]
        [InverseProperty("PhotoCollections")]
        public virtual Business Business { get; set; }
    }
}
