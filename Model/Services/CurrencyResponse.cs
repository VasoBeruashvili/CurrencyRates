using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Services
{
    public class CurrencyResponse
    {
        [JsonProperty("id")]
        public int Id { get; set; }

        [JsonProperty("cur_code")]
        public string Code { get; set; }

        [JsonProperty("cur_name")]
        public string Name { get; set; }

        [JsonProperty("cur_value")]
        public decimal Value { get; set; }
    }
}
