using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PART1_ASP.NET
{
    public partial class _3_3ลำดับเหตุการณ์ของคลาส_Page : System.Web.UI.Page
    {
        //ลำดับ1 Page_Init
        //ลำดับ2 Page_Load
        //ลำดับ3 Page_PreRender
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("<br>เกิดเหตุการณ์ Page_Load()");
        }

        private void Page_PreRender(object sender, System.EventArgs e)
        {
            Response.Write("<br>เกิดเหตุการณ์ Page_PreRender()");
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            Response.Write("<br>เกิดเหตุการณ์ Page_Init()");
        }
    }
}