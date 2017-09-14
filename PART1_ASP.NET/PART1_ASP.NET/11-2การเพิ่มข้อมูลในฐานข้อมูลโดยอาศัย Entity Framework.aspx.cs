using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace PART1_ASP.NET
{
    public partial class _11_2การเพิ่มข้อมูลในฐานข้อมูลโดยอาศัย_Entity_Framework : System.Web.UI.Page
    {
        NorthwindEntities1 edm = new NorthwindEntities1();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                var cs = from c in edm.Categories select c;

                ddlCategory.DataValueField = "CategoryID";
                ddlCategory.DataTextField = "CategoryName";
                ddlCategory.DataSource = cs.ToList();
                ddlCategory.DataBind();
            }

            ShowAllProducts(); 
            cmdAdd.Attributes.Add("OnClick", "javascript:if(confirm('คุณต้องการเพิ่มข้อมูลใช่หรือไม่?')== false) return false;");
        }

        protected void cmdAdd_Click(object sender, EventArgs e)
        {
            if ((txtProductName.Text.Trim() != "") && (txtUnitPrice.Text.Trim() != ""))
            {
                Product p = new Product();
                p.ProductName = txtProductName.Text.Trim();
                p.UnitPrice = Convert.ToDecimal(txtUnitPrice.Text.Trim());
                p.CategoryID = Convert.ToInt32(ddlCategory.SelectedValue);

                if (edm.Database.Connection.State == ConnectionState.Closed)
                {
                    edm.Database.Connection.Open();
                }

                edm.Products.Add(p);
                edm.SaveChanges();

                txtProductName.Text = "";
                txtUnitPrice.Text = "0";
                ShowAllProducts();
            }
        }

        private void ShowAllProducts()
        {
            var ps = from p in edm.Products
                     from c in edm.Categories
                     where (p.CategoryID == c.CategoryID)
                     orderby p.ProductID descending
                     select new
                     {
                         ProductID = p.ProductID,
                         ProductName = p.ProductName,
                         UnitPrice = p.UnitPrice,
                         CategoryName = c.CategoryName
                     };
            if (ps.Count() > 0)
            {
                gvProducts.DataSource = ps.ToList();
                gvProducts.DataBind();
            }
        }

        
    }
}