using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MIVisitorCenter.Utilities
{
    public class UserInfoData
    {
        public string UserName { get; set; }
        public string Email { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string BusinessName { get; set; }
        public bool EmailConfirmed { get; set; } = true;
    }

    public class SeedData
    {
        public static readonly UserInfoData[] UserSeedData = new UserInfoData[]
        {
            new UserInfoData { UserName = "dennis@example.com", Email = "dennis@example.com", FirstName = "Dennis", LastName = "Phan", BusinessName = "Burgerville"},
            new UserInfoData { UserName = "kameron@example.com", Email = "kameron@example.com", FirstName = "Kameron", LastName = "Black", BusinessName = "Dairy Queen"}
        };
    }
}
