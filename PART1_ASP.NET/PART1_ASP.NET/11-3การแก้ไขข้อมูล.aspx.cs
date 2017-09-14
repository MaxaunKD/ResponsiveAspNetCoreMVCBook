using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PART1_ASP.NET
{
    public partial class _11_3การแก้ไขข้อมูล : System.Web.UI.Page
    {
        NorthwindEntities4 edm = new NorthwindEntities4();

        protected void Page_Load(object sender, EventArgs e)
        {
            ShowAllProducts();
            cmdEdit.Attributes.Add("OnClick", "javascript:if(confirm('คุณต้องการแก้ไขข้อมูลใช่หรือไม่?') == false) return false;");
        }

        private void ShowAllProducts()
        {
            var ps = from p in edm.Products
                     select new
                     {
                         ProductID = p.ProductID,
                         ProductName = p.ProductName,
                         UnitPrice = p.UnitPrice
                     };
            if (ps.Count() > 0)
            {
                gvProducts.DataSource = ps.ToList();
                gvProducts.DataBind();
            }
        }

        protected void gvProducts_RowCreated(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Style.Add(HtmlTextWriterStyle.Cursor, "pointer");
                e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='#FF7700';");
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='#FFFFFF';");
                //ทดสอบโชวค่า
                //e.Row.Attributes.Add("onclick", "alert('CurrentProductID : ' + CurrentProductID);");
            }
        }

        protected void gvProducts_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvProducts.PageIndex = e.NewPageIndex;
            gvProducts.DataBind();

            ClearData();
        }

        protected void cmdEdit_Click(object sender, EventArgs e)
        {
            //ทดสอบโชวค่า
            //Response.Write("CurrentProductID : " + CurrentProductID.Value);
            var ps = (from p in edm.Products
                      where (p.ProductID.ToString() == CurrentProductID.Value)
                      select p).FirstOrDefault();

            if ((ps != null))
            {
                ps.ProductName = txtProductName.Text.Trim();
                ps.UnitPrice = Convert.ToDecimal(txtUnitPrice.Text.Trim());
                edm.SaveChanges();

                ClearData();
                ShowAllProducts();
            }
        }

        protected void cmdClear_Click(object sender, EventArgs e)
        {
            ClearData();
        }

        private void ClearData()
        {
            lblProductID.Text = "";
            txtProductName.Text = "";
            txtUnitPrice.Text = "";
        }
    }
}