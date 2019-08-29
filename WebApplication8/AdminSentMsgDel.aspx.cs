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
    public partial class WebForm9 : System.Web.UI.Page
    {
        public Message mymsg = new Message();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnYes_Click(object sender, EventArgs e)
        {
            mymsg.Email = Request.QueryString["Email"];

            mymsg.Type = "Admin";
            MessageBusinessClass.DeleteAdminSxMsg(mymsg);

            Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect script",
               "alert(' You have  successfully Deleted ..!'); location.href='AdminSent.aspx';",
               true);


        }


        protected void BtnNo_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect script",
             "alert(' You have  successfully Cancelled ..!'); location.href='AdminSent.aspx';",
             true);  //
        }
    }
}