using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PART1_ASP.NET
{
    public partial class _10__4การแสดงข้อมูลจาก_2_ตารางขึ้นไปด้วย_Entitiy_Framework : System.Web.UI.Page
    {
        NorthwindEntities1 edm = new NorthwindEntities1();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ShowProducts();
            }
        }

        private void ShowProducts()
        {
            var ps = from p in edm.Products
                     from c in edm.Categories
                     where p.CategoryID == c.CategoryID
                     select new
                     {
                         ProductID = p.ProductID,
                         ProductName = p.ProductName,
                         CategoryName = c.CategoryName
                     };
            gv.DataSource = ps.ToList();
            gv.DataBind();
        }
    }
}