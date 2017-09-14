using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PART1_ASP.NET
{
    public partial class _10_1พื้นฐานการแสดงข้อมูลแบบตารางด้วยเว็บคอนโทรล : System.Web.UI.Page
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
    }
}