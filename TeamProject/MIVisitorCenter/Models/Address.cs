using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace MIVisitorCenter
{
    [Table("Address")]
    public partial class Address
    {
        public Address()
        {
            Businesses = new HashSet<Business>();
            EventAddresses = new HashSet<EventAddress>();
        }

        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Required]
        [StringLength(256)]
        public string StreetAddress { get; set; }
        [Required]
        [StringLength(32)]
        public string City { get; set; }
        public int Zip { get; set; }
        [Required]
        [StringLength(2)]
        public string State { get; set; }
        public double Latitude { get; set; }
        public double Longitude { get; set; }

        [InverseProperty(nameof(Business.Address))]
        public virtual ICollection<Business> Businesses { get; set; }
        [InverseProperty(nameof(EventAddress.Address))]
        public virtual ICollection<EventAddress> EventAddresses { get; set; }
    }
}
