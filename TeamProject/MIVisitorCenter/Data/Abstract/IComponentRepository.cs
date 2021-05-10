using MIVisitorCenter.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;

namespace MIVisitorCenter.Data.Abstract
{
    public interface IComponentRepository : IRepository<Component>
    {
        Component GetComponentByID(int id);
        Component GetComponentByName(string name);
        Task UpdateComponent(Component component, IFormCollection images);
        byte[] ImageToByteArray(IFormFile img);
        bool formFileIsImage(IFormFile profilePicture);

    }
}