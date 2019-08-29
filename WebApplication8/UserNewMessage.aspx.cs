using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityLayer;
using BusinessLayer;

namespace WebApplication8
{
    public partial class UserNewMessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSend_Click(object sender, EventArgs e)
        {
            string email =Session["mail"].ToString();
            string msg = Request["txtmsg"].ToString();
            string type = "user";
            string date = DateTime.Today.ToString("dd-MM-yyyy");


            MessageBusinessClass.InsertAdminMsg(type, email, date, msg);

            Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect script",
           "alert('Your message was sent successfully...!'); location.href='UserMessageBox.aspx';",
           true);
        }
    }
}