using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Resources;
using System.Globalization;
using System.Threading;
using System.Reflection;

using EntityLayer;
using BusinessLayer;

namespace WebApplication8
{
    public partial class Register : System.Web.UI.Page
    {
        private static string name;
        ResourceManager rm;
        CultureInfo ci;
        User newu = new User();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Lang"] == null)
            {
                Session["Lang"] = Request.UserLanguages[0];


            }
            if (!IsPostBack)
            {

                if (Session["Lang"].ToString() == "ar-AE")
                {
                    this.html.Attributes.Add("dir", "rtl");
                    LoadString();
                }

                else
                {
                    this.html.Attributes.Add("dir", "ltr");
                    LoadString();
                }
            }
           
            if (Session["mail"] != null)
            {
                //Retrieving UserName from Session
             
                HyperLink4.Enabled = true;
            }
            else
            {
               
                HyperLink4.Enabled = false;

            }
        }

        private void LoadString()
        {


            Thread.CurrentThread.CurrentCulture = new CultureInfo(Session["Lang"].ToString());
            rm = new ResourceManager("WebApplication8.App_GlobalResources.Register", Assembly.GetExecutingAssembly());
            ci = Thread.CurrentThread.CurrentCulture;

            Label1.Text = rm.GetString("Label1", ci);
            Label2.Text = rm.GetString("Label2", ci);
            Label3.Text = rm.GetString("Label3", ci);
            Label4.Text = rm.GetString("Label4", ci);
            Label5.Text = rm.GetString("Label5", ci);
            Label6.Text = rm.GetString("Label6", ci);
            Label7.Text = rm.GetString("Label7", ci);
            Label8.Text = rm.GetString("Label8", ci);
            Label9.Text = rm.GetString("Label9", ci);
            Label10.Text = rm.GetString("Label10", ci);
            Label11.Text = rm.GetString("Label11", ci);
            Label12.Text = rm.GetString("Label12", ci);
            RequiredFieldValidator0.Text = rm.GetString("RequiredFieldValidator0", ci);
            RequiredFieldValidator1.Text = rm.GetString("RequiredFieldValidator1", ci);
            RequiredFieldValidator2.Text = rm.GetString("RequiredFieldValidator2", ci);
            RequiredFieldValidator3.Text = rm.GetString("RequiredFieldValidator3", ci);
            RequiredFieldValidator4.Text = rm.GetString("RequiredFieldValidator4", ci);
            RequiredFieldValidator5.Text = rm.GetString("RequiredFieldValidator5", ci);
            RequiredFieldValidator6.Text = rm.GetString("RequiredFieldValidator6", ci);
            RequiredFieldValidator7.Text = rm.GetString("RequiredFieldValidator7", ci);
            RequiredFieldValidator8.Text = rm.GetString("RequiredFieldValidator8", ci);
            RequiredFieldValidator9.Text = rm.GetString("RequiredFieldValidator9", ci);
            HyperLink1.Text = rm.GetString("Home", ci);
            HyperLink2.Text = rm.GetString("Rooms", ci);
            HyperLink6.Text = rm.GetString("Gallery", ci);
            HyperLink4.Text = rm.GetString("Profile", ci);
            HyperLink3.Text = rm.GetString("SignIn", ci);
            HyperLink5.Text = rm.GetString("Contact", ci);
            BtnSubmit.Text = rm.GetString("Submit", ci);
            Label13.Text = rm.GetString("Label13", ci);
            Label14.Text = rm.GetString("Label14", ci);
        }

     
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click1(object sender, EventArgs e)
        {
            string Fname = Request["TxtFistName"].ToString();
            string Lname = Request["TxtLastName"].ToString();
            string Email = Request["TxtEmail"].ToString();
            string nic = Request["TxtNic"].ToString();
            string Address = Request["TxtAddr"].ToString();
            string nation = Request["TxtNation"].ToString();
            string Answer = Request["txtAnswer"].ToString();
            string contact = Request["txtContactNo"].ToString();
            string age = Request["txtAge"].ToString();
            string Password = Request["TxtPassword"].ToString();
            string ConfirmPassword = Request["TxtConfirmPassword"].ToString();
            string date = DateTime.Today.ToString("dd-MM-yyyy");

           
            if (Password == ConfirmPassword)
            {
                User newuser = new User(Email,Password);

                if (DropDownList1.SelectedValue == "01")
                {
                    newuser.R_drown1 = "01";

                }
                else if (DropDownList1.SelectedValue == "02")
                {
                    newuser.R_drown1 = "02";
                }

                else if (DropDownList1.SelectedValue == "03")
                {
                    newuser.R_drown1 = "03";
                }
                else
                {
                    newuser.R_drown1 = "00";
                }

                UserBusinessClass.AddNewUser(newuser, Fname, Lname, Email,Password,nic,Address,contact,age,date,Answer,nation);

                Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect script",
               "alert(' You have been successfully registered ..!'); location.href='SignIn.aspx';",
               true);
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect script",
             "alert('Password Invalid..!'); location.href='Register.aspx';",
             true);

            }
        }

  

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["CurrentTheam"] == null)
            {


                if (Request.QueryString["Theme"] != null)
                {

                    Page.Theme = Request.QueryString["Theme"].ToString();
                    Session["CurrentTheam"] = Request.QueryString["Theme"].ToString();
                }
            }

            else
            {
                if (Request.QueryString["Theme"] != null)
                {

                    Page.Theme = Request.QueryString["Theme"].ToString();
                    Session["CurrentTheam"] = Request.QueryString["Theme"].ToString();
                }
                else
                {
                    Page.Theme = Session["CurrentTheam"].ToString();
                }

            }
        }

        protected void DropDownList3_SelectedIndexChanged1(object sender, EventArgs e)
        {
            name = DropDownList3.SelectedValue;
            Response.Redirect("~/Register.aspx?Theme=" + name);
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Lang"] = DropDownList2.SelectedValue;
            if (Session["Lang"].ToString() == "ar-AE")
            {
                this.html.Attributes.Add("dir", "rtl");
                LoadString();
            }

            else
            {
                this.html.Attributes.Add("dir", "ltr");
                LoadString();
            }
        }
    }
}