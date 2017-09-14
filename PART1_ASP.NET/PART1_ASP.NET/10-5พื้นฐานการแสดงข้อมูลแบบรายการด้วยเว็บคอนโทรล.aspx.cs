using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PART1_ASP.NET
{
    public partial class _10_5พื้นฐานการแสดงข้อมูลแบบรายการด้วยเว็บคอนโทรล : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                NorthwindEntities2 edm = new NorthwindEntities2();
                var cs = from c in edm.Categories select c;

                ddlCategories.DataValueField = "CategoryID";
                ddlCategories.DataTextField = "CategoryName";
                ddlCategories.DataSource = cs.ToList();
                ddlCategories.DataBind();
            }
        }

        protected void ddlCategories_SelectedIndexChanged(object sender, EventArgs e)
        {
            string strValue = ddlCategories.SelectedValue.ToString();
            string str = ddlCategories.SelectedItem.Text;
            Response.Write("รหัส : " + strValue + "<br />");
            Response.Write("ประเภท : " + str);
        }
    }
}