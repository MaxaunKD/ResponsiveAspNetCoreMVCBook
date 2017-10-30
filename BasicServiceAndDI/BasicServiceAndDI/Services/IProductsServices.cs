using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BasicServiceAndDI.Models;

namespace BasicServiceAndDI.Services
{
    public interface IProductsServices
    {
        Products GetProductData();
    }
}
