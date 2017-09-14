using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PART1_ASP.NET
{
    public partial class _10_2การแสดงหรือซ่อนคอลัมน์ตามขนาดหน้าจอ : System.Web.UI.Page
    {
        NorthwindEntities edm = new NorthwindEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            var cs = from c in edm.Customers select c;

            if (cs.Count() > 0)
            {
                gvCustomers.DataSource = cs.ToList();
                gvCustomers.DataBind();
            }
        }

        protected void gvCustomers_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvCustomers.PageIndex = e.NewPageIndex;
            gvCustomers.DataBind();
        }
    }
}