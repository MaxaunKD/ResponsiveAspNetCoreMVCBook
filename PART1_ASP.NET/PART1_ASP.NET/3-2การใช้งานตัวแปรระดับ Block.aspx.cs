using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PART1_ASP.NET
{
    public partial class _3_2การใช้งานตัวแปรระดับ_Block : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int i;
            for (i = 0; i <= 2; i++)
            {
                string strVal = "ตัวแปรระดับ Block";
                Response.Write("<br />ค่าของตัวแปร strVal : " + strVal);
            }
            //Response.Write("<br />ค่าของตัวแปร strVal : " + strVal);
        }
    }
}