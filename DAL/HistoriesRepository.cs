using Model.Entities;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class HistoriesRepository : IDisposable
    {
        public bool CheckHistoriesForCurrentDate()
        {
            using (DataContext ctx = new DataContext())
            {
                return ctx.Histories.Any(h => h.CurrencyDate == DbFunctions.TruncateTime(DateTime.Now));
            }
        }

        public void AddRange(ICollection<History> histories)
        {
            using (DataContext ctx = new DataContext())
            {
                ctx.Histories.AddRange(histories);

                ctx.SaveChanges();
            }
        }

        public List<History> GetByDateRange(DateTime fromDate, DateTime toDate)
        {
            using (DataContext ctx = new DataContext())
            {
                return ctx.Histories.Where(h => h.CurrencyDate >= fromDate && h.CurrencyDate <= toDate).ToList();
            }
        }



        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        protected virtual void Dispose(bool disposing)
        {
            if (disposing) { }
        }
    }
}
