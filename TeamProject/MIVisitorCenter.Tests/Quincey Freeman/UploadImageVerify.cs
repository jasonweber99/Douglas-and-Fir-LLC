using NUnit.Framework;
using MIVisitorCenter;
using Microsoft.AspNetCore.Http;
using System.IO;
using System.Text;
using MIVisitorCenter.Data.Abstract;
using Moq;


namespace MIVisitorCenter.Tests
{
    [TestFixture]
    public class UploadImageVerify
    {
        private static IFormFile InvalidImageFactory()
        {
            IFormFile file = new FormFile(
                new MemoryStream(
                    Encoding.UTF8.GetBytes("This is a faked file")),
                    0,
                    0,
                    "Data",
                    "dummy.file");
            return file;
        }

        [Test]
        public void Image_FromFactoryShouldBeInvalid_False()
        {
            // Arrange
            IFormFile file = InvalidImageFactory();
            Mock<IBusinessRepository> mock = new();
            IBusinessRepository businessRepo = mock.Object;

            // Act
            bool isImage = businessRepo.formFileIsImage(file);

            // Assert
            Assert.IsFalse(isImage);

        }

    }
}