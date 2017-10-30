using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using BasicModel.Models;
using BasicModel.ViewModels;

namespace BasicModel.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            //Book b = new Book();
            //b.ISBN = "12345";
            //b.Title = "การพัฒนา Web Apps ด้วย ASP.NET Core";
            //b.Price = 345;

            //return View(b);

            BooksStore bs = new BooksStore();
            var bLists = bs.GetAllBooks();

            return View(bLists);
        }

        public IActionResult Details(string Id)
        {
            var model = new BooksStore();
            var ps = model.GetBookById(Id);

            if (ps == null)
            {
                return RedirectToAction("Index");
            }

            return View(ps);
        }

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
