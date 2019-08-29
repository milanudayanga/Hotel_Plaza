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
    public partial class UpdateAdminDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            var id = Request.QueryString["Email"];
          
            string Fname = Request["TxtFistName"].ToString();
            string Lname = Request["TxtLastName"].ToString();
            string Email = id.ToString();
            string Password = Request["TxtPassword"].ToString();
            string Nic = Request["TxtNic"].ToString();
            string age = Request["TxtAge"].ToString();
            string address = Request["TxtAddr"].ToString();
            string ConfirmPassword = Request["TxtConfirmPassword"].ToString();
           
            if (Password == ConfirmPassword)
            {
                Admin newuser = new Admin(Email, Password);

                AdminBusinessClass.UpdateAdmin(newuser, Fname, Lname, Email, Password, Nic, age, address);

                Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect script",
               "alert(' You have been successfully registered ..!'); location.href='UpdateDetails.aspx';",
               true);
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect script",
             "alert('Password Invalid..!'); location.href='UpdateDetails.aspx';",
             true);

            }
        }
    }
}