using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PART1_ASP.NET
{
    public partial class _3_8การทำคำทักทายผู้เข้าเยี่ยมชมเว็บเพจ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie ck = Request.Cookies["Hello"];
            string str = "";
            if (ck == null)
            {
                lblHello.Text = "สวัสดีครับ คุณ : Guest";
            }
            else
            {
                str = "สวัสดีครับ คุณ : " + ck["Name"];
                str += "<br>คุณเข้าเว็บครั้งล่าสึด : " + ck["LastVisited"];
                lblHello.Text = str;
            }
        }

        protected void cmdSave_Click(object sender, EventArgs e)
        {
            HttpCookie ck = Request.Cookies["Hello"];
            if (ck == null)
            {
                ck = new HttpCookie("Hello");
            }
            ck["Name"] = txtName.Text;
            ck["LastVisited"] = DateTime.Now.ToString();
            ck.Expires = DateTime.Now.AddMonths(1);
            Response.Cookies.Add(ck);
        }
    }
}