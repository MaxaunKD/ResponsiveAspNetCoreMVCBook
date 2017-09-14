using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PART1_ASP.NET
{
    public partial class _10_3เชียนโค้ดใช้งาน_Entity_Framework_แบบกำหนดคอลัมน์เอง : System.Web.UI.Page
    {
        NorthwindEntities edm = new NorthwindEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            var cs = from c in edm.Customers 
                     select new {
                         CustomerID = c.CustomerID,
                         ContactName = c.ContactName,
                         CompanyName = c.CompanyName
            };

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