using Model.Services;
using System.Net;
using System.Text;
using Newtonsoft.Json;
using System.Collections.Generic;
using DAL;
using Model.Entities;

namespace RatesManager
{
    class Program
    {
        static void Main(string[] args)
        {
            using (HistoriesRepository hr = new HistoriesRepository())
            {
                if (!hr.CheckHistoriesForCurrentDate())
                {
                    using (WebClient client = new WebClient())
                    {
                        client.Encoding = Encoding.UTF8;
                        string response = client.DownloadString("http://currency.any.ge/api.php?ids=42,14");

                        List<CurrencyResponse> currencies = JsonConvert.DeserializeObject<List<CurrencyResponse>>(response);
                        List<History> histories = new List<History>();

                        currencies.ForEach(c =>
                        {
                            histories.Add(new History
                            {
                                Code = c.Code,
                                Name = c.Name,
                                Value = c.Value
                            });
                        });

                        hr.AddRange(histories);
                    }
                }
            }
        }
    }
}
