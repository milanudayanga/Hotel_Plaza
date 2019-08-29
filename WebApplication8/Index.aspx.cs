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

namespace WebApplication8

{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private static string name;
        ResourceManager rm;
        CultureInfo ci;

        protected void Page_Load(object sender,System.EventArgs e)
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
            rm = new ResourceManager("WebApplication8.App_GlobalResources.Index", Assembly.GetExecutingAssembly());
            ci = Thread.CurrentThread.CurrentCulture;

            HyperLink1.Text = rm.GetString("Home", ci);
            HyperLink2.Text = rm.GetString("Rooms", ci);
            HyperLink6.Text = rm.GetString("Gallery", ci);
            HyperLink4.Text = rm.GetString("Profile", ci);
            HyperLink3.Text = rm.GetString("SignIn", ci);
            HyperLink5.Text = rm.GetString("Contact", ci);
            LblSrilanka.Text = rm.GetString("LblSrilanka", ci);
            Label1.Text = rm.GetString("Label1", ci);
            Label2.Text = rm.GetString("Label2", ci);
            Label3.Text = rm.GetString("Label3", ci);
            LblSpecialOffer.Text = rm.GetString("LblSpecialOffer", ci);
            lblnav.Text = rm.GetString("lblnav", ci);
            HyperLink100.Text = rm.GetString("HyperLink100", ci);
            HyperLink101.Text = rm.GetString("HyperLink101", ci);
            HyperLink102.Text = rm.GetString("HyperLink102", ci);
            HyperLink103.Text = rm.GetString("HyperLink103", ci);
            Labelsocl.Text = rm.GetString("Labelsocl", ci);
            Labelpay.Text = rm.GetString("Labelpay", ci);
            Label4.Text = rm.GetString("Label4", ci);
            Label5.Text = rm.GetString("Label5", ci);
            Label6.Text = rm.GetString("Label6", ci);
            Label7.Text = rm.GetString("Label7", ci);
            Label8.Text = rm.GetString("Label8", ci);
            Label9.Text = rm.GetString("Label9", ci);
            Label10.Text = rm.GetString("Label10", ci);
            Label11.Text = rm.GetString("Label11", ci);
            Label12.Text = rm.GetString("Label12", ci);
            Label13.Text = rm.GetString("Label13", ci);
            Label14.Text = rm.GetString("Label14", ci);
            Label15.Text = rm.GetString("Label15", ci);
            Label16.Text = rm.GetString("Label16", ci);
            Button1.Text = rm.GetString("Button1", ci);
          
        }

 

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Lang"] = DropDownList1.SelectedValue;

            if (Session["Lang"].ToString() == "fr-FR")
            {

                    Session["CurrentTheam"] ="French"; // change theme
                    Response.Redirect("~/Index.aspx");
            }
            else if (Session["Lang"].ToString() == "ar-AE")
            {

                Session["CurrentTheam"] = "Arabic"; // change theme
                Response.Redirect("~/Index.aspx");
            }
            else
            {
                Session["CurrentTheam"] = "Theme 00";
                Response.Redirect("~/Index.aspx");
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
             Response.Redirect("~/Index.aspx?Theme=" + name);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Check_Availability.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Register.aspx");
        }

     
   
   
        
    }
  
}