using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//
using System.Collections.Specialized;

namespace PART1_ASP.NET
{
    public partial class _3_7การใช้งาน_Cookies_แบบมี_Keys : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdCookiesNoKeys_Click(object sender, EventArgs e)
        {
            HttpCookie ck = new HttpCookie("FullName");
            ck.Value = "Thai C#";
            ck.Expires = DateTime.Now.AddMinutes(1);
            Response.Cookies.Add(ck);
        }

        protected void cmdCookiesWithKeys_Click(object sender, EventArgs e)
        {
            HttpCookie ck = new HttpCookie("FullName");
            ck.Values["FirsName"] = "Thai C#";
            ck.Values["LastName"] = ".NET";
            ck.Expires = DateTime.Now.AddMinutes(1);
            Response.Cookies.Add(ck);
        }

        protected void cmdReadCookies_Click(object sender, EventArgs e)
        {
            HttpCookie GetCK = Request.Cookies["FullName"];

            if (GetCK == null)
            {
                return;
            }
            if (GetCK.HasKeys)
            {
                NameValueCollection ckValues = new NameValueCollection(GetCK.Values);
                foreach (string ckName in ckValues.AllKeys)
                {
                    Response.Write(ckName + " : " + GetCK[ckName] + "<br />");
                }
            }
            else
            {
                Response.Write(GetCK.Value);
            }
        }
    }
}