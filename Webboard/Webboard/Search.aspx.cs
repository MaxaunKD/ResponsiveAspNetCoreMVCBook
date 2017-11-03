using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Webboard.Models;

namespace Webboard
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string _q = Request.QueryString["q"];

            if (string.IsNullOrEmpty(_q))
            {
                Response.RedirectPermanent("Default.aspx");
            }
            else
            {
                if (!string.IsNullOrEmpty(_q.Trim()))
                {
                    WebboardEntities db = new WebboardEntities();
                    var ts = from t in db.Topics
                             where t.Topic1.Contains(_q)
                             orderby t.TID descending
                             select new
                             {
                                 TID = t.TID,
                                 Topic = t.Topic1,
                                 UserName = t.UserName,
                                 RecordDate = t.RecordDate,
                                 ViewCount = t.ViewCount,
                                 ReplyCount = t.ReplyCount,
                                 IP = t.IP
                             };
                    if (ts.Count() > 0)
                    {
                        gvTopic.DataSource = ts.ToList();
                        gvTopic.DataBind();
                    }
                }
            }
        }

        protected void gvTopic_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTopic.PageIndex = e.NewPageIndex;
            gvTopic.DataBind();
        }
    }
}