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
    public class HoursRepo
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

        private Mock<DbSet<OperatingHour>> _mockOperatingHourDbSet;
        private Mock<MIVisitorCenterDbContext> _mockContext;
        private List<OperatingHour> _operatingHours;

        [SetUp]
        public void Setup()
        {
            var address = new Address { Id = 1, StreetAddress = "123 Main St", City = "Monmouth", State = "OR", Zip = 97361 };
            var business = new Business { Id = 1, Name = "Business", Description = "", Address = address };
            _operatingHours = new List<OperatingHour> 
            { 
                new OperatingHour {Id = 1, Day = 0, Open = null, Close = null, BusinessId = 1, Business = business}
            };

            _mockOperatingHourDbSet = GetMockDbSet(_operatingHours.AsQueryable());
            _mockContext = new Mock<MIVisitorCenterDbContext>();
            _mockContext.Setup(ctx => ctx.OperatingHours).Returns(_mockOperatingHourDbSet.Object);
            _mockContext.Setup(ctx => ctx.Set<OperatingHour>()).Returns(_mockOperatingHourDbSet.Object);
        }

        [Test]
        public void CreateSevenDaysForBusinessAsync_WhenCalled_CreatesSevenOperatingHours()
        {
            // Arrange
            IHoursRepository hoursRepository = new HoursRepository(_mockContext.Object);

            // Act
            var hours = hoursRepository.CreateSevenDaysForBusinessAsync(1).Result;
            int count = hours.Count();

            // Assert
            Assert.That(count, Is.EqualTo(7));
        }

        [Test]
        public void HoursRepo_UpdateHours_UpdatesHoursCorrectly()
        {
            // Arrange
            IHoursRepository hoursRepository = new HoursRepository(_mockContext.Object);
            DateTime open = new DateTime(2021, 1, 1, 8, 0, 0);
            DateTime close = new DateTime(2021, 1, 1, 22, 0, 0);

            // Act
            var opHour = hoursRepository.UpdateHoursForBusinessAsync(0, open, close, 1).Result;
            var o = opHour.Open;
            var c = opHour.Close;

            // Assert
            Assert.That(o, Is.EqualTo(open));
            Assert.That(c, Is.EqualTo(close));
        }

        [Test]
        public void HoursRepo_DefaultDateTimeMakesOpenAndClose_Null()
        {
            // Arrange
            IHoursRepository hoursRepository = new HoursRepository(_mockContext.Object);

            // Act
            var opHour = hoursRepository.UpdateHoursForBusinessAsync(0, default, default, 1).Result;
            var o = opHour.Open;
            var c = opHour.Close;

            // Assert
            Assert.That(o, Is.EqualTo(null));
            Assert.That(c, Is.EqualTo(null));
        }
    }
}
