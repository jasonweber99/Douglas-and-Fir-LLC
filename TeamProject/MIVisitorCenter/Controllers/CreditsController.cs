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
    public class CreditsController : Controller
    {
        

        public CreditsController()
        {
        }
        
        public IActionResult Credits()
        {
            return View();
        }
    }
}
