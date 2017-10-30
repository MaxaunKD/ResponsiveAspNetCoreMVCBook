using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BasicServiceAndDI.Models;

namespace BasicServiceAndDI.Services
{
    public class ProductsServices : IProductsServices
    {
        public Products GetProductData()
        {
            Products p = new Products();
            p.ProductID = "001" + "-" + GetHashCode();
            p.ProductName = "การพัฒนา Web Apps ด้วย ASP.NET Core";
            p.ProductPrice = 345;

            return p;
        }
    }
}
