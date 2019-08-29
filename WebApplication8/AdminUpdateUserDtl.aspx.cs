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
    public partial class AdminUpdateUserDtl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = Request.QueryString["Email"].ToString();
            User bkns = new User();

            List<User> selectedUserEmail = UserBusinessClass.viewSelectedUser(email);

            foreach (User item in selectedUserEmail)
            {
                TxtFistName.Text = item.Fname1;
                TxtLastName.Text = item.Lname1;
                txtEmail.Text = item.email;
                TxtPassword.Text = item.Password;
                txtContact.Text = item.ContactNo;
                txtquize.Text = item.R_drown1;
                TxtAge.Text = item.Age;
                txtDate.Text = item.Date;
                TxtAddr.Text = item.Address;
                txtNation.Text = item.Nation;
                txtAnswer.Text = item.Answer;
                TxtNic.Text = item.Nic;
                txtEmail.Text = email;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
                   User item = new User();

                   item.Fname1 = Request["TxtFistName"].ToString();
                   item.Lname1 = Request["TxtLastName"].ToString();
                   item.email = Request["txtEmail"].ToString();
                   item.Password = Request["TxtPassword"].ToString();
                   item.ContactNo = Request["txtContact"].ToString(); 
                   item.R_drown1 = Request["txtquize"].ToString(); 
                   item.Age = Request["TxtAge"].ToString(); 
                   item.Date = Request["txtDate"].ToString(); 
                   item.Address = Request["TxtAddr"].ToString(); 
                   item.Nation = Request["txtNation"].ToString(); 
                   item.Answer = Request["txtAnswer"].ToString(); 
                   item.Nic = Request["TxtNic"].ToString(); 
                   item.email = Request["txtEmail"].ToString();

            UserBusinessClass.updateSelectedUserdtl(item);

            Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect script",
           "alert(' You have been successfully Updated ..!'); location.href='AdminPanel.aspx';",
           true);
        }
    }
}