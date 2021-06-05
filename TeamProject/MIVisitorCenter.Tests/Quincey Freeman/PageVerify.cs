using NUnit.Framework;
using MIVisitorCenter.Models;


namespace MIVisitorCenter.Tests
{
    [TestFixture]
    public class PageVerify
    {
        private static Page ValidPageFactory()
        {
            return new ()
            {
                Id = 1,
                Name = "Index"
                
            };
        }

        [Test]
        public void ComponentText_InstantiatedUsingValidComponentTextMakesModel_Valid()
        {
            Page p = ValidPageFactory();
            ModelValidator mv = new ModelValidator(p);
            Assert.That(mv.Valid, Is.True);

        }

        [Test]
        public void ComponentText_TextLengthTooLongMakesModel_Invalid()
        {
            Page p = ValidPageFactory();
            p.Name = "This is a string to override the ValidPageFactory method Name value. The set name should be no longer than 64 characters";

            ModelValidator mv = new ModelValidator(p);
            Assert.That(mv.Valid, Is.False);
        }

    }
}