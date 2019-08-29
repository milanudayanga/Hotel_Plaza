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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string email = Request["txtEmail"].ToString();
            string msg = Request["txtmsg"].ToString();
            string type = "Admin";
            string date = DateTime.Today.ToString("dd-MM-yyyy");


            MessageBusinessClass.InsertAdminMsg(type, email, date, msg);

            Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect script",
           "alert('Your message was sent successfully...!'); location.href='AdminNewMessage.aspx';",
           true);
        }
    }
}