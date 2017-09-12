using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PART1_ASP.NET
{
    public partial class _7_1Received : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var _FirstName = Request.QueryString["txtFirstName"];
            var _LastName = Request.QueryString["txtLastName"];
            
            if (string.IsNullOrEmpty(_FirstName))
            {
                Response.RedirectPermanent("7-1Default-Get.aspx");
            }

            if (string.IsNullOrEmpty(_LastName))
            {
                Response.RedirectPermanent("7-1Default-Get.aspx");
            }

            Response.Write("ชื่อ-สกุล : " + _FirstName + " " + _LastName);
        }
    }
}