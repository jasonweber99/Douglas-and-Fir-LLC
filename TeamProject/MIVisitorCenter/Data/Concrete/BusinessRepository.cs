using System.IO;
using MIVisitorCenter.Data.Abstract;
using MIVisitorCenter.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;

namespace MIVisitorCenter.Data.Concrete
{
    public class BusinessRepository : Repository<Business>, IBusinessRepository
    {
        public BusinessRepository(MIVisitorCenterDbContext ctx) : base(ctx)
        {

        }


        public virtual Business GetBusinessByID(int id)
        {
            return _dbSet.Where(a => a.Id == id).FirstOrDefault();
        }

        public virtual Business GetBusinessByName(string name)
        {
            return _dbSet.Where(a => a.Name == name).FirstOrDefault();
        }

        public virtual async Task UpdateBusiness(Business business, IFormFile profilePicture, IFormCollection images)
        {
            if (business == null)
            {
                throw new ArgumentNullException("Entity must not be null to add or update");
            }
            if (profilePicture != null)
            {
                // Check if formfile is an image
                if (formFileIsImage(profilePicture))
                {
                    business.PictureFileName = ImageToByteArray(profilePicture);
                }
            }

            if (images != null)
            {
                foreach (var image in images.Files)
                {
                    if (formFileIsImage(image))
                    {
                        var photo = new PhotoCollection()
                        {
                            BusinessId = business.Id,
                            Photo = ImageToByteArray(image)
                        };
                        business.PhotoCollections.Add(photo);
                    }
                }
            }

            _context.Update(business);
            await _context.SaveChangesAsync();
            return;
        }

        ///
        /// <summary>
        /// Converts IFormFile image to byte array
        /// 
        /// </summary>
        /// <param name="img">Image to convert into byte array</param>
        public virtual byte[] ImageToByteArray(IFormFile img)
        {
            using (var ms = new MemoryStream())
            {
                img.CopyTo(ms);
                byte[] arr = ms.ToArray();
                return ms.ToArray();
            }
        }
        ///
        /// <summary>
        /// Checks if the submitted file from a form is an image
        /// 
        /// </summary>
        /// <param name="profilePicture">File to check</param>
        public virtual bool formFileIsImage(IFormFile profilePicture)
        {

            // ---- From https://stackoverflow.com/a/51879881 ---- //
            //-------------------------------------------
            //  Check the image mime types
            //-------------------------------------------
            if (profilePicture.ContentType.ToLower() != "image/jpg" &&
                profilePicture.ContentType.ToLower() != "image/jpeg" &&
                profilePicture.ContentType.ToLower() != "image/pjpeg" &&
                profilePicture.ContentType.ToLower() != "image/gif" &&
                profilePicture.ContentType.ToLower() != "image/x-png" &&
                profilePicture.ContentType.ToLower() != "image/png")
            {
                return false;
            }

            //-------------------------------------------
            //  Check the image extension
            //-------------------------------------------
            if (Path.GetExtension(profilePicture.FileName).ToLower() != ".jpg"
                && Path.GetExtension(profilePicture.FileName).ToLower() != ".png"
                && Path.GetExtension(profilePicture.FileName).ToLower() != ".gif"
                && Path.GetExtension(profilePicture.FileName).ToLower() != ".jpeg")
            {
                return false;
            }
            //------------------------------------------
            //   Attempt to read the file
            //------------------------------------------ 
            if (!profilePicture.OpenReadStream().CanRead)
            {
                return false;
            }
            return true;
        }
    }
}