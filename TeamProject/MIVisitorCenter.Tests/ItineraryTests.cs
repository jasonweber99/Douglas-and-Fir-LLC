// Kelby
// #177688992

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
    [TestFixture]
    public class ItineraryTests
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

        private Mock<DbSet<BusinessCategory>> _mockBusinessCategoryDbSet;
        private Mock<MIVisitorCenterDbContext> _mockContext;
        private List<BusinessCategory> _businessCategories;

        [SetUp]
        public void Setup()
        {
            var address = new Address { Id = 1, StreetAddress = "123 Main St", City = "Monmouth", State = "OR", Zip = 97361 };
            _businessCategories = new List<BusinessCategory>
            {
                new BusinessCategory
                {
                    Id = 1,
                    Business = new Business { Id = 1, Name = "Hiking", Description = "", Address = address },
                    Category = new Category { Id = 1, Name = "Hiking" }
                },
                new BusinessCategory
                {
                    Business = new Business { Id = 2, Name = "Cycling", Description = "", Address = address },
                    Category = new Category { Id = 2, Name = "Cycling" }
                },
                new BusinessCategory
                {
                    Business = new Business { Id = 3, Name = "Birding", Description = "", Address = address },
                    Category = new Category { Id = 3, Name = "Birding" }
                },
                new BusinessCategory
                {
                    Business = new Business { Id = 4, Name = "Fishing", Description = "", Address = address },
                    Category = new Category { Id = 4, Name = "Fishing" }
                },
                new BusinessCategory
                {
                    Business = new Business { Id = 5, Name = "Golf Course", Description = "", Address = address },
                    Category = new Category { Id = 5, Name = "Golf" }
                },
                new BusinessCategory
                {
                    Business = new Business { Id = 6, Name = "Winery", Description = "", Address = address },
                    Category = new Category { Id = 6, Name = "Wineries" }
                },
                new BusinessCategory
                {
                    Business = new Business { Id = 7, Name = "Historic Site", Description = "", Address = address },
                    Category = new Category { Id = 7, Name = "Historic Sites & Museums" }
                },
                new BusinessCategory
                {
                    Business = new Business { Id = 8, Name = "Art Gallery", Description = "", Address = address },
                    Category = new Category { Id = 8, Name = "Art Galleries" }
                },
                new BusinessCategory
                {
                    Business = new Business { Id = 9, Name = "Cinema", Description = "", Address = address },
                    Category = new Category { Id = 9, Name = "Cinemas & Performing Arts" }
                },
                new BusinessCategory
                {
                    Business = new Business { Id = 10, Name = "Lodging", Description = "", Address = address },
                    Category = new Category { Id = 10, Name = "Lodging" }
                },
                new BusinessCategory
                {
                    Business = new Business { Id = 11, Name = "Restaurant", Description = "", Address = address },
                    Category = new Category { Id = 11, Name = "Restaurants" }
                }
            };

            _mockBusinessCategoryDbSet = GetMockDbSet(_businessCategories.AsQueryable());
            _mockContext = new Mock<MIVisitorCenterDbContext>();
            _mockContext.Setup(ctx => ctx.BusinessCategories).Returns(_mockBusinessCategoryDbSet.Object);
            _mockContext.Setup(ctx => ctx.Set<BusinessCategory>()).Returns(_mockBusinessCategoryDbSet.Object);
            
        }

        [TestCase(0)]
        [TestCase(1)]
        [TestCase(2)]
        [TestCase(3)]
        [TestCase(10)]
        public void Itinerary_WhenCreatedWithNumberOfDays_HasThatNumberOfItineraryDays(int numDays)
        {
            // Arrange
            ICategoryRepository categoryRepo = new CategoryRepository(_mockContext.Object);
            var interests = new List<Category>();
            var businesses = categoryRepo.GetAllMIBusinesses();
            var lodging = categoryRepo.GetAllLodging();

            // Act
            Itinerary itinerary = new Itinerary(numDays, interests, businesses.AsQueryable(), lodging.AsQueryable());

            // Assert
            Assert.That(itinerary.Days.Count == numDays);
        }

        [TestCase(1)]
        [TestCase(2)]
        public void BuildDays_WhenCalled_EachDayContainsSevenTimeSlots(int numDays)
        {
            // Arrange
            ICategoryRepository categoryRepo = new CategoryRepository(_mockContext.Object);
            var interests = new List<Category>();
            var businesses = categoryRepo.GetAllMIBusinesses();
            var lodging = categoryRepo.GetAllLodging();
            Itinerary itinerary = new Itinerary(numDays, interests, businesses.AsEnumerable(), lodging.AsEnumerable());

            // Act
            List<ItineraryDay> days = itinerary.BuildDays(numDays, interests, businesses.AsEnumerable(), lodging.AsEnumerable());

            // Assert
            foreach (var day in days)
            {
                Assert.That(day.ItineraryTimeSlots.Count == 7);
            }
            
        }

        [TestCase(1)]
        [TestCase(2)]
        public void BuildDays_WhenCalled_EachTimeSlotHasBusiness(int numDays)
        {
            // Arrange
            ICategoryRepository categoryRepo = new CategoryRepository(_mockContext.Object);
            var interests = new List<Category>();
            var businesses = categoryRepo.GetAllMIBusinesses();
            var lodging = categoryRepo.GetAllLodging();
            Itinerary itinerary = new Itinerary(numDays, interests, businesses.AsEnumerable(), lodging.AsEnumerable());

            // Act
            List<ItineraryDay> days = itinerary.BuildDays(numDays, interests, businesses.AsEnumerable(), lodging.AsEnumerable());

            // Assert
            foreach (var day in days)
            {
                foreach (var ts in day.ItineraryTimeSlots)
                {
                    Assert.That(ts.Business, Is.Not.Null);
                }
            }
        }

        public void Itinerary_WhenCreatedWithInterests_ContainsThoseInterests()
        {
            // Arrange
            ICategoryRepository categoryRepo = new CategoryRepository(_mockContext.Object);
            var interests = new List<string>{ "Cycling", "Golf", "Art Galleries" };
            var categories = categoryRepo.GetCategoryListFromStringList(interests);
            var businesses = categoryRepo.GetAllMIBusinesses();
            var lodging = categoryRepo.GetAllLodging();

            // Act
            Itinerary itinerary = new Itinerary(1, categories, businesses.AsEnumerable(), lodging.AsEnumerable());

            // Assert
            Assert.That(itinerary.Days[0].ItineraryTimeSlots[0].Business.Name == "Cycling");
            Assert.That(itinerary.Days[0].ItineraryTimeSlots[0].Business.Name == "Golf");
            Assert.That(itinerary.Days[0].ItineraryTimeSlots[0].Business.Name == "Art Gallery");
        }
    }
}
