using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PART1_ASP.NET
{
    public partial class _3_5การกำหนดให้เว็บคอนโทรลมีการส่งค่ากลับ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == true)
            {
                Label1.Text = "รายการที่คุณคลิกเลือก : " + ListBox1.SelectedItem.Text;
            }
        }
    }
}