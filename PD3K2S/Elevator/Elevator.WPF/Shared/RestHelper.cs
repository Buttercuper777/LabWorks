using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace Elevator.WPF.Shared
{
    public static class RestHelper
    {
        private static readonly string getAll = "allfields";
        private static readonly string editFloor = "editfloor";
        private static readonly string baseURL = "https://localhost:5001/api/elevator/";

        public static async Task<string> GetAll()
        {
            using(HttpClient client = new HttpClient())
            {
                using (HttpResponseMessage res = await client.GetAsync(baseURL + getAll))
                {
                    using(HttpContent content = res.Content)
                    {
                        string data = await content.ReadAsStringAsync();
                        if(data != null)
                        {
                            return data;
                        }
                    }
                }
            }

            return string.Empty;
        }

        public static async Task<string> GetById(string id)
        {
            using (HttpClient client = new HttpClient())
            {
                using (HttpResponseMessage res = await client.GetAsync(baseURL + id))
                {
                    using (HttpContent content = res.Content)
                    {
                        string data = await content.ReadAsStringAsync();
                        if (data != null)
                        {
                            return data;
                        }
                    }
                }
            }

            return string.Empty;
        }

        public static async Task<string> EditFloor(string id, int floor)
        {
            var inputData = new Dictionary<string, string>
            {
                {"id", id },
                {"floor", floor.ToString()}
            };

            var input = new FormUrlEncodedContent(inputData);
            using (HttpClient client = new HttpClient())
            {
                //client.DefaultRequestHeaders.Add("id", id);
                //client.DefaultRequestHeaders.Add("floor", floor);
                using (HttpResponseMessage res = await client.PostAsync(baseURL + editFloor, input))
                {
                    using (HttpContent content = res.Content)
                    {
                        string data = await content.ReadAsStringAsync();
                        if (data != null)
                        {
                            return data;
                        }
                    }
                }
            }

            return string.Empty;
        }

    }
}
