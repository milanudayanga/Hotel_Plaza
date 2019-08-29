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
using System.Media;
using EntityLayer;
using BusinessLayer;

namespace WebApplication8
{
    public partial class Contact : System.Web.UI.Page
    {
        private static string name;
        ResourceManager rm;
        CultureInfo ci;

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
                lbl1.Text = "Welcome : " + Session["mail"];
                HyperLink4.Enabled = true;
            }
            else
            {
                lbl1.Text = "Welcome:Guest";
                HyperLink4.Enabled = false;

            }


        }

        private void LoadString()
        {


            Thread.CurrentThread.CurrentCulture = new CultureInfo(Session["Lang"].ToString());
            rm = new ResourceManager("WebApplication8.App_GlobalResources.Contact", Assembly.GetExecutingAssembly());
            ci = Thread.CurrentThread.CurrentCulture;

            HyperLink1.Text = rm.GetString("Home", ci);
            HyperLink2.Text = rm.GetString("Rooms", ci);
            HyperLink6.Text = rm.GetString("Gallery", ci);
            HyperLink4.Text = rm.GetString("Profile", ci);
            HyperLink3.Text = rm.GetString("SignIn", ci);
            HyperLink5.Text = rm.GetString("Contact", ci);
            lblnav.Text = rm.GetString("lblnav", ci);
            HyperLink100.Text = rm.GetString("HyperLink100", ci);
            HyperLink101.Text = rm.GetString("HyperLink101", ci);
            HyperLink102.Text = rm.GetString("HyperLink102", ci);
            HyperLink103.Text = rm.GetString("HyperLink103", ci);
            Labelsocl.Text = rm.GetString("Labelsocl", ci);
            Labelpay.Text = rm.GetString("Labelpay", ci);
            TxtName.Text = rm.GetString("TxtName", ci);
            TxtEmail.Text = rm.GetString("TxtEmail", ci);
                Label1.Text = rm.GetString("Label1", ci);
                Label2.Text = rm.GetString("Label2", ci);
                Label3.Text = rm.GetString("Label3", ci);
                Label4.Text = rm.GetString("Label4", ci);
                Label5.Text = rm.GetString("Label5", ci);
                RequiredFieldValidator1.Text = rm.GetString("RegularExpressionValidator1", ci);
                RequiredFieldValidator2.Text = rm.GetString("RegularExpressionValidator2", ci);
                BtnSubmit.Text = rm.GetString("BtnSubmit", ci);
                reqName.Text = rm.GetString("reqName", ci);
        }

 

        protected void BtnSubmit_Click(object sender, EventArgs e)

        {

            string Mail = Request["TxtEmail"].ToString();
            string name = Request["TxtName"].ToString();
            string msg = Request["Txtmsg"].ToString();
            string type = "user";
            string date = DateTime.Today.ToString("dd-MM-yyyy");


            MessageBusinessClass.InsertUserMsg(type,Mail, date, msg,name);

            Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect script",
           "alert('Your message was sent successfully...!'); location.href='Index.aspx';",
           true);
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Lang"] = DropDownList1.SelectedValue;

            if (Session["Lang"].ToString() == "fr-FR")
            {

                Session["CurrentTheam"] = "French"; // change theme
                Response.Redirect("~/Contact.aspx");
            }
            else if (Session["Lang"].ToString() == "ar-AE")
            {

                Session["CurrentTheam"] = "Arabic"; // change theme
                Response.Redirect("~/Contact.aspx");
            }
            else
            {
                Session["CurrentTheam"] = "Theme 00";
                Response.Redirect("~/Contact.aspx");
            }

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


        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {


            name = DropDownList2.SelectedValue;
            Response.Redirect("~/Contact.aspx?Theme=" + name);

        }
     
    }
}