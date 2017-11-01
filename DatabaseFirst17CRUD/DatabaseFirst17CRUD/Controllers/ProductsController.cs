using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

using DatabaseFirst17CRUD.Models;
using Microsoft.EntityFrameworkCore;

namespace DatabaseFirst17CRUD.Controllers
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
            var ps = await (from p in db.Products.Include(p => p.Category)
                            orderby p.ProductId
                            select p).ToListAsync();
            return View(ps);
        }

        public async Task<ActionResult> SearchProducts(string txtFilter)
        {
            if (string.IsNullOrEmpty(txtFilter))
            {
                return View("Index", await db.Products.Include(p => p.Category).ToListAsync());
            }else
            {
                return View("Index", await db.Products.Include(p => p.Category).Where(p => p.ProductName.Contains(txtFilter)).ToListAsync());
            }
        }

        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var ps = await db.Products.Include(p => p.Category).SingleOrDefaultAsync(p => p.ProductId == id);
            
            if (ps == null)
            {
                return NotFound();
            }

            return View(ps);
        }

        public IActionResult Create()
        {
            ViewData["CategoryId"] = new SelectList(db.Categories, "CategoryId", "CategoryName");
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(Products products)
        {
            if (ModelState.IsValid)
            {
                db.Add(products);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewData["CategoryId"] = new SelectList(db.Categories, "CategoryId", "CategoryName", products.CategoryId);
            return View(products);
        }

        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var ps = await db.Products.SingleOrDefaultAsync(p => p.ProductId == id);
            if (ps == null)
            {
                return NotFound();
            }
            ViewData["CategoryId"] = new SelectList(db.Categories, "CategoryId", "CategoryName", ps.CategoryId);
            return View(ps);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, Products products)
        {
            if (id != products.ProductId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    db.Update(products);
                    await db.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!CheckProducts(products.ProductId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction("Index");
            }

            ViewData["CategoryId"] = new SelectList(db.Categories, "CategoryId", "categoryName", products.CategoryId);
            return View(products);
        }

        private bool CheckProducts(int id)
        {
            return db.Products.Any(e => e.ProductId == id);
        }
    }
}
