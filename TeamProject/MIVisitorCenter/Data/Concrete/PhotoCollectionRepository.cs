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
    public class PhotoCollectionRepository : Repository<PhotoCollection>, IPhotoCollectionRepository
    {
        public PhotoCollectionRepository(MIVisitorCenterDbContext ctx) : base(ctx)
        {

        }
    }
}