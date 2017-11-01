using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

using DatabaseFirst.Models;
using Microsoft.EntityFrameworkCore;

namespace DatabaseFirst.Controllers
{
    public class ProductsController : Controller
    {
        private NorthwindContext db;

        public ProductsController(NorthwindContext ctx)
        {
            db = ctx;
        }

        public async Task<IActionResult> Index()
        {
            var ps = await (from p in db.Products
                            orderby p.ProductId
                            select p).ToListAsync();
            return View(ps);
        }

        public async Task<ActionResult> SearchProducts(string txtFilter)
        {
            if (string.IsNullOrEmpty(txtFilter))
            {
                return View("Index", await db.Products.ToListAsync());
            }else
            {
                return View("Index", await db.Products.Where(p => p.ProductName.Contains(txtFilter)).ToListAsync());
            }
        }
    }
}
