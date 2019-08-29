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
    public partial class AdminDel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnYes_Click(object sender, EventArgs e)
        {
                var id = Request.QueryString["Email"];
           
           
                User deluser = new User();
                deluser.email =id.ToString();
                UserBusinessClass.DeleteUser(deluser);

                Session["Email"] = null;  
            Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect script",
               "alert(' You have  successfully Deactivated ..!'); location.href='AdminPanel.aspx';",
               true);
          

            }
        

        protected void BtnNo_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect script",
             "alert(' You have  successfully Cancelled ..!'); location.href='ViewAllUsers.aspx';",
             true);  //
        }
    }
}