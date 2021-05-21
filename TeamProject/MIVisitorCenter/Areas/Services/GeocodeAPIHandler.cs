using System;
using System.Diagnostics;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using Newtonsoft.Json.Linq;

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

        public static async Task GetData(Address address)
        {
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));

            var response = await SendRequest(UrlBuilder(address));

            var geodata = JObject.Parse(response.ToString());
            address.Latitude = (double)geodata["results"]["geometry"]["location"]["lat"];
            address.Longitude = (double) geodata["results"]["geometry"]["location"]["lng"];
        }

        static string UrlBuilder(Address address)
        {
            var streetAddress = address.StreetAddress.Replace(" ", "%20");
            var requestURL = "https://maps.googleapis.com/maps/api/geocode/json?address=" 
                             + streetAddress
                             + address.City
                             + address.State
                             + "&key="
                             + apiKey;
            return requestURL;
        }

        static async Task<string> SendRequest(string uri)
        {
            try
            {
                HttpResponseMessage response = await client.GetAsync(uri);
                response.EnsureSuccessStatusCode();
                var data = await response.Content.ReadAsStringAsync();
                return data;
            }
            catch (HttpRequestException e)
            {
                Debug.WriteLine(e);
                throw;
            }
        }
    }
}