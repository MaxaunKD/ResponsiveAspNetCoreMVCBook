using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PART1_ASP.NET
{
    public partial class _11_1SearchCustomers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string.IsNullOrEmpty(Request.QueryString["q"])) || (string.IsNullOrEmpty(Request.QueryString["f"])))
            {
                Response.Write("null");
                //Response.RedirectPermanent("11-1SearchCustomers_jQuery.aspx");
            }
            else
            {
                string SearchType = "";
                string _q = Request.QueryString["q"].Trim();
                string _f = Request.QueryString["f"].Trim();

                NorthwindEntities3 edm = new NorthwindEntities3();
                IQueryable<Customer> cs = null;
                switch (_f)
                {
                    case "CustomerID":
                        SearchType = "รหัสลูกค้า";
                        cs = from c in edm.Customers where (c.CustomerID.Contains(_q.ToString())) select c;
                        break;

                    case "ContactName":
                        SearchType = "ชื่อติดต่อ";
                        cs = from c in edm.Customers where (c.ContactName.Contains(_q.ToString())) select c;
                        break;
                }

                Response.Write("<div>เงื่อนไขที่ค้นหา : " + SearchType + "<br />ด้วยคำว่า : " + _q + "</div>");

                if (cs.Count() > 0)
                {
                    gvCustomers.DataSource = cs.ToList();
                    gvCustomers.DataBind();
                    Response.Write("<br /><div>จำนวนข้อมูลที่พบ : " + cs.Count().ToString() + "รายการ</div>");
                }
                else
                {
                    gvCustomers.DataSource = null;
                    Response.Write("<br />...ไม่มีข้อมูลลูกค้า ตามเงื่อนไขที่คุณระบุ");
                    Response.Write("<br /><a href='11-1SearchCustomers_jQuery.aspx'>กลับหน้าแรก</a>");
                }
            }
        }
    }
}