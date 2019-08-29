﻿using System;
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

namespace WebApplication8
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["HotelPlazaConnectionString"].ConnectionString;
        SqlCommand com;
        SqlDataAdapter sqlda;
        private static string name;
        ResourceManager rm;
        CultureInfo ci;

        string str;
        DataTable dt;
    
        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            str = "SELECT * FROM Bookings";
            com = new SqlCommand(str,con);
            sqlda = new SqlDataAdapter(com);
            dt = new DataTable();

            sqlda.Fill(dt);
            DateTime startDate;
            DateTime EndDate;

       
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i <dt.Rows.Count ; i++)
                {
                  startDate = Convert.ToDateTime(dt.Rows[i]["checkin"]);
                  EndDate = Convert.ToDateTime(dt.Rows[i]["checkout"]);

                  if (startDate <= e.Day.Date && e.Day.Date <= EndDate)
                    {
                            e.Cell.BackColor = System.Drawing.Color.Green;
                         
                    }
                        else
                        {
                            e.Cell.BackColor = System.Drawing.Color.White;
                        }
                    }
             
                }
       
                
            }

        protected void btnNext_Click(object sender, EventArgs e)
        {
        Response.Redirect("Rooms.aspx");
        }
   
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
                Response.Redirect("~/Check_Availability.aspx");
            }
            else if (Session["Lang"].ToString() == "ar-AE")
            {

                Session["CurrentTheam"] = "Arabic"; // change theme
                Response.Redirect("~/Check_Availability.aspx");
            }
            else
            {
                Session["CurrentTheam"] = "Theme 00";
                Response.Redirect("~/Check_Availability.aspx");
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
            Response.Redirect("~/Check_Availability.aspx?Theme=" + name);

        }


        }

    }

