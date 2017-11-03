using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Webboard.Models;

namespace Webboard
{
    public partial class Default1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WebboardEntities db = new WebboardEntities();
            var ws = from w in db.Topics
                     orderby w.TID descending
                     select new {
                         TID = w.TID,
                         Topic = w.Topic1,
                         UserName = w.UserName,
                         RecordDate = w.RecordDate,
                         ViewCount = w.ViewCount,
                         ReplyCount = w.ReplyCount,
                         IP = w.IP
                     };
            if (ws.Count() > 0)
            {
                gvTopic.DataSource = ws.ToList();
                gvTopic.DataBind();
            }
        }

        protected void gvTopic_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTopic.PageIndex = e.NewPageIndex;
            gvTopic.DataBind();
        }

        protected void cmdSearch_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtSearch.Text.Trim()))
            {
                Response.RedirectPermanent("Search.aspx?q=" + txtSearch.Text.Trim());
            }
        }
    }
}