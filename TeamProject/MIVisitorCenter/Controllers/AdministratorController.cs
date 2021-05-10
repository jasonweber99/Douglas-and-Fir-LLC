using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using MIVisitorCenter.Models;
using Microsoft.EntityFrameworkCore;
using MIVisitorCenter.Data.Abstract;
using Microsoft.AspNetCore.Http;

namespace MIVisitorCenter.Controllers
{
    public class AdministratorController : Controller
    {
        private readonly IPageRepository _page;
        private readonly IComponentRepository _component;
        private readonly IImageRepository _image;

        public AdministratorController(IPageRepository page, IComponentRepository component, IImageRepository image)
        {
            _page = page;
            _component = component;
            _image = image;
        }

        [Authorize(Roles = "admin")]
        public IActionResult Manage()
        {
            ViewData["Pages"] = _page.GetAll().ToArray();
            ViewData["Components"] = _component.GetAll().Include(i => i.ComponentImages).Include(t => t.ComponentTexts).Include(p => p.Page).ToArray();
            return View();
        }

        public async Task<IActionResult> Edit(int id, [Bind("Id,PageId,Name,Description,Type,Images,ComponentTexts")] Component component, IFormCollection images)
        {
            await _component.UpdateComponent(component, images);
            return RedirectToAction("Manage");
        }

        public async Task<IActionResult> Delete(int id)
        {
            var photo = await _image.FindByIdAsync(id);
            await _image.DeleteByIdAsync(id);
            return RedirectToAction("Manage");
        }
    }
}
