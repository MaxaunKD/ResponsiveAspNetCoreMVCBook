using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PART1_ASP.NET
{
    public partial class _3_6พื้นฐานการเก็บข้อมูลในเครื่องผู้ใช้งานด้วยคลาส_Cookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdAdd_Click(object sender, EventArgs e)
        {
            HttpCookie ck = new HttpCookie("FullName");
            ck.Value = "Thai C#";
            ck.Expires = DateTime.Now.AddMinutes(0.1);
            Response.Cookies.Add(ck);
            Response.Write("เก็บข้อมูลลง Cookies แล้ว !!!");
        }

        protected void cmdRead_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Write(Request.Cookies["FullName"].Value);
            }
            catch (Exception)
            {
                Response.Write("Cookies หมดอายุแล้ว !!!");
            }
        }
    }
}