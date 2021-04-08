using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using MailKit.Security;

namespace MIVisitorCenter.Areas.Services
{
    public class MailKitEmailSenderOptions
    {
        public MailKitEmailSenderOptions()
        {
            HostSecureSocketOptions = SecureSocketOptions.Auto;
        }

        public string HostAddress { get; set; }

        public int HostPort { get; set; }

        public string HostUsername { get; set; }

        public string HostPassword { get; set; }

        public SecureSocketOptions HostSecureSocketOptions { get; set; }

        public string SenderEMail { get; set; }

        public string SenderName { get; set; }
    }
}
