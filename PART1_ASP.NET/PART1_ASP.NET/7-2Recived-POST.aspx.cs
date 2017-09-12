using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PART1_ASP.NET
{
    public partial class _7_2Recived_POST : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var _FirstName = Request.Form["txtFirstName"];
            var _LastName = Request.Form["txtLastName"];

            if (string.IsNullOrEmpty(_FirstName))
            {
                Response.RedirectPermanent("7-2Default-POST.aspx");
            }

            if (string.IsNullOrEmpty(_LastName))
            {
                Response.RedirectPermanent("7-2Default-POST.aspx");
            }

            Response.Write("ชื่อ-สกุล : " + _FirstName + " " + _LastName);
        }
    }
}