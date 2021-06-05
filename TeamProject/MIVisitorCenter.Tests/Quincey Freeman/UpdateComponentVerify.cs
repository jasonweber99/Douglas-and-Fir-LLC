using NUnit.Framework;
using MIVisitorCenter;
using Microsoft.AspNetCore.Http;
using System.IO;
using System.Text;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using MIVisitorCenter.Data.Abstract;
using MIVisitorCenter.Data.Concrete;
using MIVisitorCenter.Models;
using Moq;


namespace MIVisitorCenter.Tests
{
    [TestFixture]
    public class UpdateComponentVerify
    {
        private static Component ValidComponentFactory()
        {
            return new ()
            {
                Id = 1,
                PageId = 1,
                Page = new Page {Id = 1, Name = "Index"},
                Name = "Main Text Box",
                Type = "Text",
                Description = "Main text for the homepage",
                ComponentImages = null,
                ComponentTexts = new ComponentText {Id = 1, ComponentId = 1, Text = "Some text can go here"}
                
            };
        }


        // a helper to make dbset queryable
        private Mock<DbSet<T>> GetMockDbSet<T>(IQueryable<T> entities) where T : class
        {
            var mockSet = new Mock<DbSet<T>>();
            mockSet.As<IQueryable<T>>().Setup(m => m.Provider).Returns(entities.Provider);
            mockSet.As<IQueryable<T>>().Setup(m => m.Expression).Returns(entities.Expression);
            mockSet.As<IQueryable<T>>().Setup(m => m.ElementType).Returns(entities.ElementType);
            mockSet.As<IQueryable<T>>().Setup(m => m.GetEnumerator()).Returns(entities.GetEnumerator());
            return mockSet;
        }


        [Test]
        public void Component_UpdatingComponentTextIs_Valid()
        {
            // Mock
            ComponentText componentText =  new ComponentText {Id = 1, ComponentId = 1, Text = null};
            Page page = new Page {Id = 1, Name = "Index"};
            List<Component> components = new List<Component>
            {
                new Component {Id = 1, PageId = 1, Page = page, Name = "Main Text Box", Type = "Text", Description = "Main text box on homepage", ComponentTexts = componentText},
            };
            Mock<DbSet<Component>> mockComponentDbSet = GetMockDbSet(components.AsQueryable());
            Mock<MIVisitorCenterDbContext> mockContext = new Mock<MIVisitorCenterDbContext>();
            mockContext.Setup(ctx => ctx.Components).Returns(mockComponentDbSet.Object);



            // Arrange
            IComponentRepository componentRepository = new ComponentRepository(mockContext.Object);
            var c = mockContext.Object.Components.Where(n => n.Id == 1).Single();

            // Act
            c.ComponentTexts.Text = "New Text";
            componentRepository.UpdateComponent(c, null);

            // Assert
            var updatedComponent = mockContext.Object.Components.Where(n => n.Id == 1).Single();
            Assert.IsTrue(updatedComponent.ComponentTexts.Text == "New Text");
        }
    }
}