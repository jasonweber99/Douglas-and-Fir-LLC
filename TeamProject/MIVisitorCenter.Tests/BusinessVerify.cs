using NUnit.Framework;
using MIVisitorCenter.Models;

namespace MIVisitorCenter.Tests
{
    [TestFixture]
    public class BusinessVerify
    {
        private static Business MakeValidBusiness()
        {
            return new Business
            {
                Name = "MI Business",
                Description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce consectetur in turpis nec pharetra. Aliquam erat volutpat. Pellentesque accumsan dictum rhoncus. Morbi magna libero, euismod non erat nec, laoreet vehicula mauris.",
                Phone = "503-555-1234",
                Website = "www.business.com",
                PictureFileName = "business.jpg"
            };
        }

        [Test]
        public void Business_DefaultIs_NotValid()
        {
            // Arrange
            Business b = new Business();
            // Act
            ModelValidator mv = new ModelValidator(b);
            // Assert
            Assert.That(mv.Valid, Is.False);
        }

        [Test]
        public void Business_RequiredNullablePropertiesAreNullMeansIs_NotValid()
        {
            // Arrange
            Business b = new Business
            {
                Name = null
            };
            // Act
            ModelValidator mv = new ModelValidator(b);
            // Assert
            Assert.That(mv.ContainsFailureFor("Name"), Is.True);
            Assert.That(mv.Valid, Is.False);
        }

        [Test]
        public void Assignment_AllRequiredPropertiesAreNonNullAndValidValuesIs_Valid()
        {
            // Arrange
            Business b = MakeValidBusiness();
            // Act
            ModelValidator mv = new ModelValidator(b);
            // Assert
            Assert.That(mv.Valid, Is.True);
        }


        //************* Name ***************
        [TestCase("Business")]
        [TestCase("Business 123")]
        [TestCase("Business !@#$%^&*()'")]
        public void Business_NamesWithSymbolsAndNumbersAre_Valid(string name)
        {
            Business b = MakeValidBusiness();
            b.Name = name;

            ModelValidator mv = new ModelValidator(b);

            Assert.That(mv.ContainsFailureFor("Name"), Is.False);
            Assert.That(mv.Valid, Is.True);
        }

        [Test]
        public void Business_NameLongerThanMaxLength_NotValid()
        {
            Business b = MakeValidBusiness();
            b.Name = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce consectetur in turpis nec pharetra. Aliquam erat volutpat. Pellentesque accumsan dictum rhoncus. Morbi magna libero, euismod non erat nec, laoreet vehicula mauris. Maecenas vel accumsan nulla, a volutpat turpis. Aenean non sapien ante. Maecenas at imperdiet augue.";

            ModelValidator mv = new ModelValidator(b);

            Assert.That(mv.ContainsFailureFor("Name"), Is.True);
            Assert.That(mv.Valid, Is.False);
        }


        //************* Description ***************
        [TestCase("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce consectetur in turpis nec pharetra. Aliquam erat volutpat. Pellentesque accumsan dictum rhoncus. Morbi magna libero, euismod non erat nec, laoreet vehicula mauris.")]
        [TestCase("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce consectetur in turpis nec pharetra. Aliquam erat volutpat. Pellentesque accumsan dictum rhoncus. Morbi magna libero, euismod non erat nec, laoreet vehicula mauris 123.")]
        [TestCase("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce consectetur in turpis nec pharetra. Aliquam erat volutpat. Pellentesque accumsan dictum rhoncus. Morbi magna libero, euismod non erat nec, laoreet vehicula mauris !@#$%^&*()'")]
        public void Business_DescriptionsWithSymbolsAndNumbersAre_Valid(string desc)
        {
            Business b = MakeValidBusiness();
            b.Description = desc;

            ModelValidator mv = new ModelValidator(b);

            Assert.That(mv.ContainsFailureFor("Description"), Is.False);
            Assert.That(mv.Valid, Is.True);
        }


        //************* Phone ***************
        [TestCase("5035551234")]
        [TestCase("503-555-1234")]
        [TestCase("503.555.1234")]
        [TestCase("!@#$%^&*()[]{}|'")]
        public void Business_PhoneWithSymbolsAndNumbersAre_Valid(string phone)
        {
            Business b = MakeValidBusiness();
            b.Phone = phone;

            ModelValidator mv = new ModelValidator(b);

            Assert.That(mv.ContainsFailureFor("Phone"), Is.False);
            Assert.That(mv.Valid, Is.True);
        }

        [Test]
        public void Business_PhoneLongerThanMaxLength_NotValid()
        {
            Business b = MakeValidBusiness();
            b.Phone = "555555555555555555555555555555555";

            ModelValidator mv = new ModelValidator(b);

            Assert.That(mv.ContainsFailureFor("Phone"), Is.True);
            Assert.That(mv.Valid, Is.False);
        }


        //************* Website ***************
        [TestCase("http://www.business.com")]
        [TestCase("www.1234567890.com")]
        [TestCase("!@#$%^&*()[]{}|'")]
        public void Business_WebsiteWithSymbolsAndNumbersAre_Valid(string website)
        {
            Business b = MakeValidBusiness();
            b.Website = website;

            ModelValidator mv = new ModelValidator(b);

            Assert.That(mv.ContainsFailureFor("Website"), Is.False);
            Assert.That(mv.Valid, Is.True);
        }

        [Test]
        public void Business_WebsiteLongerThanMaxLength_NotValid()
        {
            Business b = MakeValidBusiness();
            b.Website = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum imperdiet egestas tristique. Sed convallis venenatis blandit. ";

            ModelValidator mv = new ModelValidator(b);

            Assert.That(mv.ContainsFailureFor("Website"), Is.True);
            Assert.That(mv.Valid, Is.False);
        }


        //************* PictureFileName ***************
        [TestCase("227-2276478_tadpole-free-png-and-vector-.png")]
        [TestCase("!@#$%^&*()[]{}|.gif'")]
        public void Business_PictureFileNameWithSymbolsAndNumbersAre_Valid(string pfn)
        {
            Business b = MakeValidBusiness();
            b.PictureFileName = pfn;

            ModelValidator mv = new ModelValidator(b);

            Assert.That(mv.ContainsFailureFor("PictureFileName"), Is.False);
            Assert.That(mv.Valid, Is.True);
        }

        [Test]
        public void Business_PictureFileNameLongerThanMaxLength_NotValid()
        {
            Business b = MakeValidBusiness();
            b.PictureFileName = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas porttitor rhoncus ultrices. Morbi mi risus, facilisis vitae justo at, viverra sodales ante. Proin a magna vitae eros venenatis vestibulum id vel libero. Etiam posuere sit amet odio quis eros. ";

            ModelValidator mv = new ModelValidator(b);

            Assert.That(mv.ContainsFailureFor("PictureFileName"), Is.True);
            Assert.That(mv.Valid, Is.False);
        }
    }
}
