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
    public class ComponentRepository : Repository<Component>, IComponentRepository
    {
        public ComponentRepository(MIVisitorCenterDbContext ctx) : base(ctx)
        {

        }

        public virtual Component GetComponentByID(int id)
        {
            return _dbSet.Where(a => a.Id == id).FirstOrDefault();
        }

        public virtual Component GetComponentByName(string name)
        {
            return _dbSet.Where(a => a.Name == name).FirstOrDefault();
        }

        public virtual async Task UpdateComponent(Component component, IFormCollection images)
        {
            if (component == null)
            {
                throw new ArgumentNullException("Entity must not be null to add or update");
            }

            if (images != null)
            {
                foreach (var image in images.Files)
                {
                    if (formFileIsImage(image))
                    {
                        var photo = new ComponentImage()
                        {
                            ComponentId = component.Id,
                            Image = ImageToByteArray(image)
                        };
                        component.ComponentImages.Add(photo);
                    }
                }
            }

            _context.Update(component);
            await _context.SaveChangesAsync();
            return;
        }


        public virtual byte[] ImageToByteArray(IFormFile img)
        {
            using (var ms = new MemoryStream())
            {
                img.CopyTo(ms);
                byte[] arr = ms.ToArray();
                return ms.ToArray();
            }
        }

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
            // if (!profilePicture.OpenReadStream().CanRead)
            // {
            //     return false;
            // }
            return true;
        }
    }
}