using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PART1_ASP.NET
{
    public partial class _3_9พื้นฐานการฝช้งานตัวแปรแบบ_Session : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["FullName"] = "Thai C#.NET";
            Session["Email"] = "Thai C#.NET@gmail.com";
            Session.Timeout = 10;

            Response.Write("SID : " + Session.SessionID + "<br>");
            Response.Write("ชื่อ-สกุล : " + Session["FullName"].ToString() + "<br>");
            Response.Write("อีเมล : " + Session["Email"].ToString() + "<br>");

            int i;
            Response.Write("Session.Count : " + Session.Count);
            for (i = 0; i <= Session.Count - 1; i++)
            {
                Response.Write("<br>" + Session.Contents[i].ToString());
            }
            for (i = 0; i <= Session.Count - 1; i++)
            {
                Response.Write("<br>" + Session.Keys[i]);
            }
        }

        protected void cmdClearByName_Click(object sender, EventArgs e)
        {
            /*int i;
            Response.Write("<br><br>");
            Response.Write("Session.Count : " + Session.Count);
            for (i = 0; i <= Session.Count - 1; i++)
            {
                Response.Write("<br>" + Session.Contents[i].ToString());
            }
            for (i = 0; i <= Session.Count - 1; i++)
            {
                Response.Write("<br>" + Session.Keys[i]);
            }
            Response.Write("<br>--------------------------");*/

            Session.Remove("FullName");
            //Session.Remove("Email");
            Response.Write("<br><br>ชื่อ-สกุล : " + Session["FullName"] + "<br>");
            Response.Write("อีเมล : " + Session["Email"]);

            /*Response.Write("<br><br>--------------------------<br>");
            Response.Write("Session.Count : " + Session.Count);
            for (i = 0; i <= Session.Count - 1; i++)
            {
                Response.Write("<br>" + Session.Contents[i].ToString());
            }
            for (i = 0; i <= Session.Count - 1; i++)
            {
                Response.Write("<br>" + Session.Keys[i]);
            }*/

            //----หากลบ Session ไม่หมดทีเดียว ตัวที่เหลือจะเลื่อนขึ้นไปเป็นตำแหน่งแรกแทน----
        }

        protected void cmdClearAll_Click(object sender, EventArgs e)
        {
            Session.Clear();
            //Session.RemoveAll();
            Response.Write("<br><br>ชื่อ-สกุล : " + Session["FullName"] + "<br>");
            Response.Write("อีเมล : " + Session["Email"]);
        }
    }
}