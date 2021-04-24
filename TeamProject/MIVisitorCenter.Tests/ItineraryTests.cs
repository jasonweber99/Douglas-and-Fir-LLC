using NUnit.Framework;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MIVisitorCenter.Models;

namespace MIVisitorCenter.Tests
{
    [TestFixture]
    public class ItineraryTests
    {
        [TestCase(0)]
        [TestCase(1)]
        [TestCase(2)]
        [TestCase(3)]
        [TestCase(10)]
        public void Itinerary_WhenCreatedWithNumberOfDays_HasThatNumberOfItineraryDays(int numDays)
        {
            // Arrange
            var interests = new List<Category>();
            var businesses = new List<Business>();
            var lodging = new List<Lodging>();

            // Act
            Itinerary itinerary = new Itinerary(numDays, interests, businesses.AsQueryable(), lodging.AsQueryable());

            // Assert
            Assert.That(itinerary.Days.Count == numDays);
        }

        [Test]
        public void BuildDay_WhenCalled_ContainsSevenTimeSlots()
        {
            // Arrange
            var interests = new List<Category>();
            var businesses = new List<Business>();
            var lodging = new List<Lodging>();
            Itinerary itinerary = new Itinerary(1, interests, businesses.AsQueryable(), lodging.AsQueryable());

            // Act
            ItineraryDay day = itinerary.BuildDay(interests, businesses.AsQueryable(), lodging.AsQueryable());

            // Assert
            Assert.That(day.ItineraryTimeSlots.Count == 7);
        }
    }
}
