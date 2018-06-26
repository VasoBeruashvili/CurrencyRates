using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CurrencyRates.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public JsonResult GetCurrencyRatesHistory(DateTime fromDate, DateTime toDate)
        {
            using (HistoriesRepository hr = new HistoriesRepository())
            {
                var histories = hr.GetByDateRange(fromDate, toDate);

                return Json(new
                {
                    dates = histories.Select(h => h.CurrencyDate).Distinct(),
                    valuesUSD = histories.Where(h => h.Code == "USD").Select(h => h.Value),
                    valuesEUR = histories.Where(h => h.Code == "EUR").Select(h => h.Value)
                });
            }
        }
    }
}