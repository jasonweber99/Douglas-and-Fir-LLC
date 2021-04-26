using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using MIVisitorCenter.Data.Abstract;


namespace MIVisitorCenter.Controllers
{
    public class PhotoCollectionController : Controller
    {
        private readonly IPhotoCollectionRepository _photoRepo;
        public PhotoCollectionController(IPhotoCollectionRepository photoRepo)
        {
            _photoRepo = photoRepo;
        }
        public async Task<IActionResult> Delete(int id)
        {
            var photo = await _photoRepo.FindByIdAsync(id);
            await _photoRepo.DeleteByIdAsync(id);
            return RedirectToAction("Edit","Businesses", new {id = photo.BusinessId});
        }
    }
}
