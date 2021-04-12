using NUnit.Framework;
using MIVisitorCenter;

namespace MIVisitorCenter.Tests
{
    [TestFixture]
    public class EventVerify
    {
        private static Event ValidEventFactory()
        {
            return new()
            {
                Id = 1,
                Name = "Sprint Review",
                Description = "Our sprint review.",
                StartDate = new System.DateTime(2021, 04, 12, 14, 0, 0),
                EndDate = new System.DateTime(2021, 04, 12, 14, 50, 0)
            };
        }

        [Test]
        public void Event_DefaultIsNotValid_False()
        {
            Event e = new();

            ModelValidator mv = new(e);

            Assert.That(mv.Valid, Is.False);
        }

        [Test]
        public void Event_FromFactoryShouldBeValid_True()
        {
            Event e = ValidEventFactory();

            ModelValidator mv = new(e);

            Assert.That(mv.Valid, Is.True);
        }

        [Test]
        public void Event_NameOutsideOfRangeIs_NotValid()
        {
            Event e = ValidEventFactory();
            e.Name = "Name example that is too long for the " +
                              "character limit of the property that it is being assigned " +
                              "to in this test of the name property of the " +
                              "Event model inside of the MIVisitorCenter project for " +
                              "our senior capstone class in the year of our lord 2021.";

            ModelValidator mv = new(e);

            Assert.That(mv.ContainsFailureFor("Name"), Is.True);
            Assert.That(mv.Valid, Is.False);
        }

        [TestCase("1")]
        [TestCase("no numbers")]
        [TestCase("Let's try some symbols @#$-)(")]
        [TestCase("012345678910111213141516171819")]
        public void Event_NameWithinRangeIs_Valid(string p)
        {
            Event e = ValidEventFactory();
            e.Name = p;

            ModelValidator mv = new(e);

            Assert.That(mv.Valid, Is.True);
        }

        [TestCase("")]
        [TestCase(" ")]
        public void Event_NameWithEmptyStringIs_NotValid(string p)
        {
            Event e = ValidEventFactory();
            e.Name = p;

            ModelValidator mv = new(e);

            Assert.That(mv.ContainsFailureFor("Name"), Is.True);
            Assert.That(mv.Valid, Is.False);
        }

        [Test]
        public void Event_EndDateWithDateBeforeStartDateIs_NotValid()
        {
            Event e = ValidEventFactory();
            e.EndDate = new(1999, 1, 1);

            ModelValidator mv = new(e);

            Assert.That(mv.ContainsFailureFor("EndDate"), Is.True);
            Assert.That(mv.Valid, Is.False);
        }

        [Test]
        public void Event_EndDateWithNullValueIs_Valid()
        {
            Event e = ValidEventFactory();
            e.EndDate = null;

            ModelValidator mv = new(e);

            Assert.That(mv.Valid, Is.True);
        }

        [TestCase("3000/1/1")]
        [TestCase("2021/4/12 15:0:0")]
        [TestCase("2021/4/12 14:51:0")]
        [TestCase("2021/4/12 14:50:1")]
        public void Event_EndDateWithinRangeIs_Valid(string p)
        {
            Event e = ValidEventFactory();
            e.EndDate = System.DateTime.Parse(p);

            ModelValidator mv = new(e);

            Assert.That(mv.Valid, Is.True);
        }
    }
}