using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using EntityLayer;

namespace WebApplication8
{
    public partial class UserMessageBox : System.Web.UI.Page
    {
        Message mymsg = new Message();

        protected void Page_Load(object sender, EventArgs e)
        {
           
            mymsg.Email = Session["mail"].ToString();
            mymsg.Type = "Admin";
        

            List<Message> InboxMsglList = MessageBusinessClass.ViewuserInboxMessage(mymsg);

            cdcatalog.DataSource = InboxMsglList;

            cdcatalog.DataBind();
        }
        }
    
}