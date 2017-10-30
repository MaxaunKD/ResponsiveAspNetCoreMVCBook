using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using BasicServiceAndDI.Models;
using BasicServiceAndDI.Services;


namespace BasicServiceAndDI.Controllers
{
    public class HomeController : Controller
    {
        private Products _p1;
        private Products _p2;

        public HomeController(IProductsServices ips1, IProductsServices ips2)
        {
            _p1 = ips1.GetProductData();
            _p2 = ips2.GetProductData();
        }

        public string Index()
        {
            string str = _p1.ProductID + " กับ " + _p2.ProductID;
            return str;
        }
        //public IActionResult Index()
        //{
        //    return View(_p);

        //    //----------- 2 ----------------------------------------
        //    //ProductsServices ps = new ProductsServices();
        //    //var Data = ps.GetProductData();

        //    //return View(Data);
        //    //----------- 2 ----------------------------------------

        //    //----------- 1 ----------------------------------------
        //    //Products p = new Products();
        //    //p.ProductID = "001";
        //    //p.ProductName = "การพัฒนา Web Apps ด้วย ASP.NET Core";
        //    //p.ProductPrice = 345;

        //    //return View(p);
        //    //----------- 1 ----------------------------------------
        //}

        public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Error()
        {
            return View();
        }
    }
}
