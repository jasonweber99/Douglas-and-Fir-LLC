using NUnit.Framework;
using MIVisitorCenter;

namespace MIVisitorCenter.Tests
{
    [TestFixture]
    public class AddressVerify
    {
        private static Address ValidAddressFactory()
        {
            return new ()
            {
                Id = 1,
                StreetAddress = "123 Main Street",
                City = "Monmouth",
                Zip = 97324,
                State = "OR"
            };
        }

        [Test]
        public void Address_DefaultIsNotValid_False()
        {
            Address a = new Address();

            ModelValidator mv = new ModelValidator(a);

            Assert.That(mv.Valid, Is.False);
        }

        [Test]
        public void Address_FromFactoryShouldBeValid_True()
        {
            Address a = ValidAddressFactory();

            ModelValidator mv = new ModelValidator(a);

            Assert.That(mv.Valid, Is.True);
        }

        [Test]
        public void Address_StreetAddressOutsideOfRangeIs_NotValid()
        {
            Address a = ValidAddressFactory();
            a.StreetAddress = "Street address example that is too long for the " +
                              "character limit of the property that it is being assigned " +
                              "to in this test of the street address property of the " +
                              "Address model inside of the MIVisitorCenter project for " +
                              "our senior capstone class in the year of our lord 2021.";

            ModelValidator mv = new ModelValidator(a);

            Assert.That(mv.ContainsFailureFor("StreetAddress"), Is.True);
            Assert.That(mv.Valid, Is.False);
        }

        [TestCase("1")]
        [TestCase("no numbers")]
        [TestCase("Let's try some symbols @#$-)(")]
        [TestCase("012345678910111213141516171819")]
        public void Address_StreetAddressWithinRangeIs_Valid(string p)
        {
            Address a = ValidAddressFactory();
            a.StreetAddress = p;

            ModelValidator mv = new ModelValidator(a);

            Assert.That(mv.Valid, Is.True);
        }

        [TestCase("")]
        [TestCase(" ")]
        public void Address_StreetAddressWithEmptyStringIs_NotValid(string p)
        {
            Address a = ValidAddressFactory();
            a.StreetAddress = p;

            ModelValidator mv = new ModelValidator(a);

            Assert.That(mv.ContainsFailureFor("StreetAddress"), Is.True);
            Assert.That(mv.Valid, Is.False);
        }

        [Test]
        public void Address_CityOutsideOfRangeIs_NotValid()
        {
            Address a = ValidAddressFactory();
            a.City = "Supercallousedfragilemysticplaguedbyhalitosis";

            ModelValidator mv = new ModelValidator(a);

            Assert.That(mv.ContainsFailureFor("City"), Is.True);
            Assert.That(mv.Valid, Is.False);
        }

        [TestCase("a")]
        [TestCase("Id")]
        [TestCase("Salem")]
        [TestCase("New York City")]
        [TestCase("Northern Albuquerque")]
        public void Address_CityInsideOfRangeIs_Valid(string p)
        {
            Address a = ValidAddressFactory();
            a.City = p;

            ModelValidator mv = new ModelValidator(a);

            Assert.That(mv.ContainsFailureFor("City"), Is.False);
            Assert.That(mv.Valid, Is.True);
        }

        [TestCase("")]
        [TestCase(" ")]
        public void Address_CityWithEmptyStringIs_NotValid(string p)
        {
            Address a = ValidAddressFactory();
            a.City = p;

            ModelValidator mv = new ModelValidator(a);

            Assert.That(mv.ContainsFailureFor("City"), Is.True);
            Assert.That(mv.Valid, Is.False);
        }

        [TestCase(1)]
        [TestCase(2491)]
        [TestCase(39550)]
        public void Address_ZipWithinIntRangeShouldBe_Valid(int p)
        {
            Address a = ValidAddressFactory();
            a.Zip = p;

            ModelValidator mv = new ModelValidator(a);

            Assert.That(mv.ContainsFailureFor("Zip"), Is.False);
            Assert.That(mv.Valid, Is.True);
        }

        [TestCase("")]
        [TestCase(" ")]
        public void Address_StateWithEmptyStringIs_NotValid(string p)
        {
            Address a = ValidAddressFactory();
            a.State = p;

            ModelValidator mv = new ModelValidator(a);

            Assert.That(mv.ContainsFailureFor("State"), Is.True);
            Assert.That(mv.Valid, Is.False);
        }

        [TestCase("a")]
        [TestCase("OR")]
        [TestCase("AR")]
        [TestCase("MO")]
        public void Address_StateInsideOfRangeIs_Valid(string p)
        {
            Address a = ValidAddressFactory();
            a.State = p;

            ModelValidator mv = new ModelValidator(a);

            Assert.That(mv.ContainsFailureFor("State"), Is.False);
            Assert.That(mv.Valid, Is.True);
        }

        [TestCase("Ore")]
        [TestCase("Oregon")]
        [TestCase("WAS")]
        [TestCase("Washington")]
        public void Address_StateOutsideOfRangeIs_NotValid(string p)
        {
            Address a = ValidAddressFactory();
            a.State = p;

            ModelValidator mv = new ModelValidator(a);

            Assert.That(mv.ContainsFailureFor("State"), Is.True);
            Assert.That(mv.Valid, Is.False);
        }
    }
}