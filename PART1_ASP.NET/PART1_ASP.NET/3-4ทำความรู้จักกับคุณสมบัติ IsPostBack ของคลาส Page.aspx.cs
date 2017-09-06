using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PART1_ASP.NET
{
    public partial class _3_4ทำความรู้จักกับคุณสมบัติ_IsPostBack_ของคลาส_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == true)
            {
                Response.Write(TextBox1.Text);
            }
            //จะพบว่าข้อความที่ป้อนถูกส่งกลับมาแสดงในหน้าเว็บเพจปัจจุบัน
        }
    }
}