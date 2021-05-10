using NUnit.Framework;
using MIVisitorCenter.Models;


namespace MIVisitorCenter.Tests
{
    [TestFixture]
    public class ComponentVerify
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
                ComponentTexts = null
                
            };
        }

        [Test]
        public void Component_InstantiatedUsingValidComponentMakesModel_Valid()
        {
            Component c = ValidComponentFactory();
            ModelValidator mv = new ModelValidator(c);
            Assert.That(mv.Valid, Is.True);

        }

        [Test]
        public void Component_NameLengthTooLongMakesModel_Invalid()
        {
            Component c = ValidComponentFactory();
            c.Name = "This is a string to override the ValidComponentFactory method Name value. The set name should be no longer than 64 characters currently";

            ModelValidator mv = new ModelValidator(c);
            Assert.That(mv.Valid, Is.False);
        }

        [Test]
        public void Component_TypeLengthTooLongMakesModel_Invalid()
        {
            Component c = ValidComponentFactory();
            c.Type = "This is a string to override the ValidComponentFactory method Type value. The set type should be no longer than 32 characters currently to categorize components easily";

            ModelValidator mv = new ModelValidator(c);
            Assert.That(mv.Valid, Is.False);
        }

        [Test]
        public void Component_DescriptionLengthTooLongMakesModel_Invalid()
        {
            Component c = ValidComponentFactory();
            c.Description = "This is a string to override the ValidComponentFactory method Description value. The set description should be no longer than 1024 characters currently describe what the component" + 
            "is doing on the page. As a result, this string is going to have to exceed 1024 characters. The following is auto-generated until the limit is exceeded. Lorem ipsum dolor sit amet, consectetur" + 
            "adipiscing elit. Proin ut leo quis risus ultrices pulvinar vel id tellus. Integer at elementum leo. Nunc lobortis eu tortor in varius. Sed sit amet vestibulum nisi. Phasellus eget metus eget nisl" + 
            "tempus fermentum. Etiam tellus felis, viverra at dolor et, cursus consectetur risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ut leo quis risus ultrices pulvinar vel id" +
            "tellus. Integer at elementum leo. Nunc lobortis eu tortor in varius. Sed sit amet vestibulum nisi. Phasellus eget metus eget nisl tempus fermentum. Etiam tellus felis, viverra at dolor et," + 
            "cursus consectetur risus. Lorem ipsum dolor sit amet, consectetur adipiscing. Integer at elementum leo. Nunc lobortis eu tortor in varius.";

            ModelValidator mv = new ModelValidator(c);
            Assert.That(mv.Valid, Is.False);
        }

    }
}