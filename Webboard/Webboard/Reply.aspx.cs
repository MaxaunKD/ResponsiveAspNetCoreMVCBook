using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Webboard.Models;

namespace Webboard
{
    public partial class Reply : System.Web.UI.Page
    {
        string CurrentTID = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            CurrentTID = Request.QueryString["TID"];
            
            if (string.IsNullOrEmpty(CurrentTID))
            {
                Response.RedirectPermanent("Default.aspx");
            }
            else
            {
                WebboardEntities db = new WebboardEntities();
                var ts = from t in db.Topics
                         where (t.TID == CurrentTID)
                         select new
                         {
                             Topic = t.Topic1,
                             Description = t.Description,
                             UserName = t.UserName,
                             RecordDate = t.RecordDate,
                             TID = t.TID,
                             ViewCount = t.ViewCount
                         };
                if (ts.Count() > 0)
                {
                    dlTopic.DataSource = ts.ToList();
                    dlTopic.DataBind();
                }

                var rs = from r in db.Replies
                         where (r.TID == CurrentTID)
                         select new
                         {
                             TID = r.TID,
                             ReplyNO = r.ReplyNO,
                             Description = r.Description,
                             ReplyName = r.ReplyName,
                             ReplyDate = r.ReplyDate,
                             IP = r.IP
                         };
                if (rs.Count() > 0)
                {
                    dlReply.DataSource = rs.ToList();
                    dlReply.DataBind();
                }

                var vs = from t in db.Topics
                         where (t.TID == CurrentTID)
                         select t;

                var ViewCount = vs.FirstOrDefault().ViewCount;
                ViewCount += 1;
                vs.FirstOrDefault().ViewCount = ViewCount;
                db.SaveChanges();
            }
        }

        protected void cmdSave_Click(object sender, EventArgs e)
        {
            WebboardEntities db = new WebboardEntities();

            var rs = (from r in db.Replies
                      where r.TID == CurrentTID
                      orderby r.ReplyNO descending
                      select r).Take(1);

            int LastReplyNO = 0;
            if (rs.Count() > 0)
            {
                var CurrentReplyNO = Convert.ToInt32(rs.FirstOrDefault().ReplyNO);
                CurrentReplyNO += 1;
                LastReplyNO = CurrentReplyNO;
            }
            else
            {
                LastReplyNO = 1;
            }

            Models.Reply rp = new Models.Reply();
            rp.TID = CurrentTID;
            rp.ReplyNO = LastReplyNO;
            rp.Description = txtDescription.Text.Trim();
            rp.ReplyName = txtReplyName.Text.Trim();
            rp.ReplyDate = DateTime.Now;
            rp.IP = Request.ServerVariables["REMOTE_ADDR"];

            var ts = from t in db.Topics
                     where t.TID == CurrentTID
                     select t;
            ts.FirstOrDefault().ReplyCount = LastReplyNO;

            db.Replies.Add(rp);
            db.SaveChanges();

            Response.RedirectPermanent("Default.aspx");
        }

        protected void cmdClear_Click(object sender, EventArgs e)
        {
            txtDescription.Text = "";
            txtReplyName.Text = "";
        }
    }
}