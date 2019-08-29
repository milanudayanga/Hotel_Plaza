using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Resources;
using System.Globalization;
using System.Threading;
using System.Reflection;
using BusinessLayer;
using EntityLayer;

namespace WebApplication8
{
    public partial class FoodDetails : System.Web.UI.Page
    {
        private static string name;
        ResourceManager rm;
        CultureInfo ci;
        protected void Page_Load(object sender, System.EventArgs e)
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
                loaddetails();

        }


        private void LoadString()
        {


            Thread.CurrentThread.CurrentCulture = new CultureInfo(Session["Lang"].ToString());
            rm = new ResourceManager("WebApplication8.App_GlobalResources.FoodDetails", Assembly.GetExecutingAssembly());
            ci = Thread.CurrentThread.CurrentCulture;

            HyperLink1.Text = rm.GetString("Home", ci);
            HyperLink2.Text = rm.GetString("Rooms", ci);
            HyperLink6.Text = rm.GetString("Gallery", ci);
            HyperLink4.Text = rm.GetString("Profile", ci);
            HyperLink3.Text = rm.GetString("SignIn", ci);
            HyperLink5.Text = rm.GetString("Contact", ci);
            Label1.Text = rm.GetString("Food", ci);
            lblnav.Text = rm.GetString("lblnav", ci);
            HyperLink100.Text = rm.GetString("HyperLink100", ci);
            HyperLink101.Text = rm.GetString("HyperLink101", ci);
            HyperLink102.Text = rm.GetString("HyperLink102", ci);
            HyperLink103.Text = rm.GetString("HyperLink103", ci);
            Labelsocl.Text = rm.GetString("Labelsocl", ci);
            Labelpay.Text = rm.GetString("Labelpay", ci);

        }



        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Lang"] = DropDownList1.SelectedValue;

            if (Session["Lang"].ToString() == "fr-FR")
            {

                Session["CurrentTheam"] = "French"; // change theme
                Response.Redirect("~/FoodDetails.aspx");
            }
            else if (Session["Lang"].ToString() == "ar-AE")
            {

                Session["CurrentTheam"] = "Arabic"; // change theme
                Response.Redirect("~/FoodDetails.aspx");
            }
            else
            {
                Session["CurrentTheam"] = "Theme 00";
                Response.Redirect("~/FoodDetails.aspx");
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
            Response.Redirect("~/FoodDetails.aspx?Theme=" + name);

        }


           public void loaddetails()
        {

            DataList1.DataSource = AdminBusinessClass.GetFoodDetails(Session["Lang"].ToString());
            DataList1.DataBind();

        }
    }
}