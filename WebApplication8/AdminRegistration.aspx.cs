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
    public partial class AdminRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string Fname = Request["TxtFistName"].ToString();
            string Lname = Request["TxtLastName"].ToString();
            string Email = Request["TxtEmail"].ToString();
            string Password = Request["TxtPassword"].ToString();
            string Nic = Request["TxtNic"].ToString();
            string age = Request["TxtAge"].ToString();
            string address = Request["TxtAddr"].ToString();
            string ConfirmPassword = Request["TxtConfirmPassword"].ToString();

            string date = DateTime.Today.ToString("dd-MM-yyyy");

            if (Password == ConfirmPassword)
            {
                Admin newuser = new Admin(Email, Password);

                AdminBusinessClass.AddNewAdmin(newuser, Fname, Lname, Email, Password, Nic, age, address, date);


                Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect script",
               "alert(' You have been successfully registered ..!'); location.href='AdminProfile.aspx';",
               true);
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect script",
             "alert('Password Invalid..!'); location.href='Register.aspx';",
             true);

            }
        }
    }
}