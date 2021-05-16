using System;
using System.Net.Http;
using System.Threading.Tasks;

namespace MIVisitorCenter.Areas.Services
{
    public class GeocodeAPIHandler
    {
        private static readonly HttpClient client;
        public static string apiKey { get; set; }

        static GeocodeAPIHandler()
        {
            client = new HttpClient();
        }

        static async Task GetData(Address address)
        {
            try
            {
                HttpResponseMessage response = await client.GetAsync(UrlBuilder(address));
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }
        }

        static string UrlBuilder(Address address)
        {
            var streetAddress = address.StreetAddress.Replace(' ', '+');
            var requestURL = "https://maps.googleapis.com/maps/api/geocode/json?address=" 
                             + streetAddress
                             + address.City
                             + address.State
                             + "&key="
                             + apiKey;
            return requestURL;
        }
    }
}