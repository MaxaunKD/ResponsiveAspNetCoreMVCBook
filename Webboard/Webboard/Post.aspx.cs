using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Webboard.Models;

namespace Webboard
{
    public partial class Post : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void cmdSave_Click(object sender, EventArgs e)
        {
            WebboardEntities db = new WebboardEntities();

            var ts = (from t in db.Topics
                      orderby t.TID descending
                      select t).Take(1);

            string LastTID = "";
            if (ts.Count() > 0)
            {
                var CurrentTID = ts.FirstOrDefault().TID;
                int RunningTID = 0;
                RunningTID = Convert.ToInt32(CurrentTID.Substring(1, CurrentTID.Length - 1));
                RunningTID += 1;
                LastTID = "T" + RunningTID.ToString("0000000");
            }
            else
            {
                LastTID = "T0000001";
            }

            Topic tp = new Topic();
            tp.TID = LastTID;
            tp.Topic1 = txtTopic.Text.Trim();
            tp.Description = txtDescription.Text.Trim();
            tp.UserName = txtUserName.Text.Trim();
            tp.RecordDate = DateTime.Now;
            tp.ViewCount = 1;
            tp.ReplyCount = 0;
            tp.IP = Request.ServerVariables["REMOTE_ADDR"];

            db.Topics.Add(tp);
            db.SaveChanges();

            Response.RedirectPermanent("Default.aspx");
        }

        protected void cmdClear_Click(object sendar, EventArgs e)
        {
            txtTopic.Text = "";
            txtDescription.Text = "";
            txtUserName.Text = "";
        }
    }
}