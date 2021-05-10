using NUnit.Framework;
using MIVisitorCenter.Models;


namespace MIVisitorCenter.Tests
{
    [TestFixture]
    public class ComponentTextVerify
    {
        private static ComponentText ValidComponentTextFactory()
        {
            return new ()
            {
                Id = 1,
                ComponentId = 1,
                Text = "Some text here"
                
            };
        }

        [Test]
        public void ComponentText_InstantiatedUsingValidComponentTextMakesModel_Valid()
        {
            ComponentText c = ValidComponentTextFactory();
            ModelValidator mv = new ModelValidator(c);
            Assert.That(mv.Valid, Is.True);

        }

        [Test]
        public void ComponentText_TextLengthTooLongMakesModel_Invalid()
        {
            ComponentText c = ValidComponentTextFactory();
            c.Text = "This is a string to override the ValidComponentTextFactory method Description value. The set text should be no longer than 1024 characters currently describe what the component" + 
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