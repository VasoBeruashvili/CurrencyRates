using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Entities
{
    [Table("Histories", Schema = "cr")]
    public class History
    {
        public int Id { get; set; }
        public DateTime CurrencyDate { get; set; } = DateTime.Now.Date;
        public string Code { get; set; }
        public string Name { get; set; }
        public decimal Value { get; set; }
    }
}
