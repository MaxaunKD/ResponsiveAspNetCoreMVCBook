using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace PART2_ASP.NET_Core_MVC.Controllers
{
    public class CustomersController : Controller
    {
        // GET: /<controller>/
        public IActionResult Index()
        {
            return View();
        }

        public string GetCustomerByID(int id)
        {
            return $"ข้อมูลของลูกค้ารหัส : {id}";
        }
    }
}
