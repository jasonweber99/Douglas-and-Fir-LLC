using NUnit.Framework;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MIVisitorCenter.Models;
using Moq;
using Microsoft.EntityFrameworkCore;
using MIVisitorCenter.Data;
using MIVisitorCenter.Data.Concrete;
using MIVisitorCenter.Data.Abstract;

namespace MIVisitorCenter.Tests
{
    public class AddressRepo
    {
        private Mock<DbSet<T>> GetMockDbSet<T>(IQueryable<T> entities) where T : class
        {
            var mockSet = new Mock<DbSet<T>>();
            mockSet.As<IQueryable<T>>().Setup(m => m.Provider).Returns(entities.Provider);
            mockSet.As<IQueryable<T>>().Setup(m => m.Expression).Returns(entities.Expression);
            mockSet.As<IQueryable<T>>().Setup(m => m.ElementType).Returns(entities.ElementType);
            mockSet.As<IQueryable<T>>().Setup(m => m.GetEnumerator()).Returns(entities.GetEnumerator());
            return mockSet;
        }

        private Mock<DbSet<Address>> _mockAddressDbSet;
        private Mock<MIVisitorCenterDbContext> _mockContext;
        private List<Address> _addresses;

        [SetUp]
        public void Setup()
        {
            _addresses = new List<Address>
            {
                new Address {Id = 1, StreetAddress = "123 Main St", City = "Monmouth", State = "OR", Zip = 97361 }
            };
            

            _mockAddressDbSet = GetMockDbSet(_addresses.AsQueryable());
            _mockContext = new Mock<MIVisitorCenterDbContext>();
            _mockContext.Setup(ctx => ctx.Addresses).Returns(_mockAddressDbSet.Object);
            _mockContext.Setup(ctx => ctx.Set<Address>()).Returns(_mockAddressDbSet.Object);
        }

        [Test]
        public void AddressRepo_ExistingAddressReturns_Id()
        {
            // Arrange
            IAddressRepository addressRepository = new AddressRepository(_mockContext.Object);
            var address = new Address
            {
                StreetAddress = "123 Main St",
                City = "Monmouth",
                State = "OR",
                Zip = 97361
            };

            // Act
            int id = addressRepository.ReturnsIdIfExistsAsync(address).Result;

            // Assert
            Assert.That(id, Is.EqualTo(1));
        }

        [Test]
        public void AddressRepo_NonExistantAddressReturns_Zero()
        {
            // Arrange
            IAddressRepository addressRepository = new AddressRepository(_mockContext.Object);
            var address = new Address
            {
                StreetAddress = "124 Main St",
                City = "Monmouth",
                State = "OR",
                Zip = 97361
            };

            // Act
            int id = addressRepository.ReturnsIdIfExistsAsync(address).Result;

            // Assert
            Assert.That(id, Is.EqualTo(0));
        }
    }
}
