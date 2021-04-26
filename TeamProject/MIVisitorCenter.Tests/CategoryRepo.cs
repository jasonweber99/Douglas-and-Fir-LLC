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
    public class CategoryRepo
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

        [Test]
        public void CategoryRepo_GetAllMIBusinessesReturns_11()
        {
            // Arrange
            ICategoryRepository categoryRepo = new CategoryRepository(_mockContext.Object);

            // Act
            int count = categoryRepo.GetAllMIBusinesses().Count();

            // Assert
            Assert.That(count, Is.EqualTo(11));
        }

        [Test]
        public void CategoryRepo_GetAllLodgingReturns_1()
        {
            // Arrange
            ICategoryRepository categoryRepo = new CategoryRepository(_mockContext.Object);

            // Act
            int count = categoryRepo.GetAllLodging().Count();

            // Assert
            Assert.That(count, Is.EqualTo(1));
        }

        [Test]
        public void CategoryRepo_GetAllActivitiesReturns_6()
        {
            // Arrange
            ICategoryRepository categoryRepo = new CategoryRepository(_mockContext.Object);

            // Act
            int count = categoryRepo.GetAllActivities().Count();

            // Assert
            Assert.That(count, Is.EqualTo(6));
        }

        [Test]
        public void CategoryRepo_GetAllArtAndCultureReturns_3()
        {
            // Arrange
            ICategoryRepository categoryRepo = new CategoryRepository(_mockContext.Object);

            // Act
            int count = categoryRepo.GetAllArtAndCulture().Count();

            // Assert
            Assert.That(count, Is.EqualTo(3));
        }

        [TestCase("Restaurants")]
        [TestCase("Lodging")]
        [TestCase("Hiking")]
        [TestCase("Cycling")]
        [TestCase("Birding")]
        [TestCase("Fishing")]
        [TestCase("Wineries")]
        [TestCase("Golf")]
        [TestCase("Historic Sites & Museums")]
        [TestCase("Art Galleries")]
        [TestCase("Cinemas & Performing Arts")]
        public void CategoryRepo_GetBusinessesByCategoryReturns_CorrectCategory(string category)
        {
            // Arrange
            ICategoryRepository categoryRepo = new CategoryRepository(_mockContext.Object);

            // Act
            var businesses = categoryRepo.GetBusinessesByCategory(category);

            // Assert
            Assert.That(businesses.Count(), Is.EqualTo(1));
            Assert.That(businesses.FirstOrDefault().Category.Name, Is.EqualTo(category));
        }

        [Test]
        public void CategoryRepo_GetCategoryListFromStringListReturns_CorrectCategories()
        {
            // Arrange
            ICategoryRepository categoryRepo = new CategoryRepository(_mockContext.Object);
            List<string> categoryNames = new List<string>{ "Restaurants", "Lodging", "Hiking", "Cycling", "Birding", "Fishing", "Wineries", "Golf", "Historic Sites & Museums", "Art Galleries", "Cinemas & Performing Arts" };

            // Act
            List<Category> categories = categoryRepo.GetCategoryListFromStringList(categoryNames);

            // Assert
            Assert.That(categories.Count(), Is.EqualTo(11));
            for (int i = 0; i < categories.Count(); i++)
            {
                Assert.That(categories[i].Name, Is.EqualTo(categoryNames[i]));
            }
        }
    }
}
