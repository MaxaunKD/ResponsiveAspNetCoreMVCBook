using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PART1_ASP.NET
{
    public partial class _3_1ขอบเขตของตัวแปร__Variable_Scope_ : System.Web.UI.Page
    {
        string strWebFormLevel = "ตัวแปรระดับเว็บฟอร์ม";

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("<br /> เรียกตัวแปร strWebFormLebel จากเหตุการณ์ Page_Load : " + strWebFormLevel);      
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<br />เรียกตัวแปร strWebFormLevel จากเหตุการณ์ Button1_Click : " + strWebFormLevel);

            string strLocalLevel = "ตัวแปรระดับ Local";
            Response.Write("<br />ค่าของตัวแปร strLocalLevel : " + strLocalLevel);
        }

        //Example
        protected void Button2_Click(object sender, EventArgs e)
        {
            //เรียก strLocalLevel ไม่ได้เพราะ strLocalLevel อยู่ในขอบเขตแค่ Button_Click
            Response.Write("<br />ค่าของตัวแปร strLocalLevel : " /*+ strLocalLevel*/);
        }
    }
}