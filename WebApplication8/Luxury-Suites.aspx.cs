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
    public partial class Luxury_Suites : System.Web.UI.Page
    {
        private static string name;
        ResourceManager rm;
        CultureInfo ci;
        Bookings bkns = new Bookings();

        protected void Page_Load(object sender, EventArgs e)
        {
            TxtName.Enabled = true;
            TxtEmail.Enabled = true;
            TxtSurName.Enabled = true;

            if (Session["mail"] != null)
            {
                TxtEmail.Text = Session["mail"].ToString();
                RequiredFieldValidator1.Enabled = false;
                RequiredFieldValidator2.Enabled = false;
                RequiredFieldValidator3.Enabled = false;
                RequiredFieldValidator4.Enabled = false;
            }

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



        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            bkns.Norooms1 = Convert.ToInt32(txtNoRooms.Text);
            bkns.Mem = Convert.ToInt32(txtmem.Text);
            bkns.Night = Convert.ToInt32(txtngt.Text);
            if (food.SelectedValue == "01")
            {
                bkns.Food = "breakfast";
                bkns.FoodPrice = 40;

            }
            else if (food.SelectedValue == "02")
            {
                bkns.Food = "Lunch";
                bkns.FoodPrice = 60;

            }
            else if (food.SelectedValue == "03")
            {
                bkns.Food = "Dinner";
                bkns.FoodPrice = 50;
            }

            else
            {
                bkns.Food = "None";
                bkns.FoodPrice = 0;
            }
            if (transport.SelectedValue == "01")
            {


                bkns.Transport = "Airport Pickup";
                bkns.TransPrice = 40;

            }

            else if (transport.SelectedValue == "02")
            {
                bkns.Transport = "Airport Drop";
                bkns.TransPrice = 40;
            }
            else if (transport.SelectedValue == "03")
            {
                bkns.Transport = "Airport Two Way";
                bkns.TransPrice = 80;
            }
            else
            {
                bkns.Transport = "None";
                bkns.TransPrice = 0;
            }

            if (Session["mail"] != null)
            {

                bkns.Norooms1 = Convert.ToInt32(txtNoRooms.Text);
                bkns.RoomType = "Luxury-Suites";
                bkns.Name = Request["TxtName"].ToString();
                bkns.Surname = Request["TxtSurName"].ToString();
                bkns.Email = TxtEmail.Text;
                bkns.Phone = Request["TxtPhone"].ToString();
                bkns.Total = ((270 * bkns.Mem * bkns.Norooms1) + (10 * bkns.Night) + bkns.FoodPrice + bkns.TransPrice) * 0.9;
                bkns.Checkin1 = checkin.SelectedDate.ToShortDateString();
                bkns.Checkout1 = checkout.SelectedDate.ToShortDateString();
                BookingsBusinessClass.AddNewBooking(bkns);

            }

            else
            {
                bkns.Norooms1 = Convert.ToInt32(txtNoRooms.Text);
                bkns.RoomType = "Luxury-Suites";
                bkns.Name = Request["TxtName"].ToString();
                bkns.Surname = Request["TxtSurName"].ToString();
                bkns.Email = Request["TxtEmail"].ToString();
                bkns.Phone = Request["TxtPhone"].ToString();
                bkns.Total = (270 * bkns.Mem * bkns.Norooms1) + (10 * bkns.Night) + bkns.FoodPrice + bkns.TransPrice;
                bkns.Checkin1 = checkin.SelectedDate.ToShortDateString();
                bkns.Checkout1 = checkout.SelectedDate.ToShortDateString();
                BookingsBusinessClass.AddNewBooking(bkns);
            }



  


            Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect script",
           "alert(' You have successfully made the booking ..!'); location.href='Rooms.aspx';",
           true);

        }

        protected void BtnRest_Click(object sender, EventArgs e)
        {

        }



        protected void checkin_SelectionChanged(object sender, EventArgs e)
        {
            bkns.Checkin1 = checkin.SelectedDate.ToShortDateString();
        }

        protected void checkout_SelectionChanged(object sender, EventArgs e)
        {
            bkns.Checkout1 = checkout.SelectedDate.ToShortDateString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (food.SelectedValue == "01")
            {
                bkns.Food = "breakfast";
                bkns.FoodPrice = 40;

            }
            else if (food.SelectedValue == "02")
            {
                bkns.Food = "Lunch";
                bkns.FoodPrice = 60;

            }
            else if (food.SelectedValue == "03")
            {
                bkns.Food = "Dinner";
                bkns.FoodPrice = 50;
            }

            if (transport.SelectedValue == "01")
            {


                bkns.Transport = "Airport Pickup";
                bkns.TransPrice = 40;

            }

            else if (transport.SelectedValue == "02")
            {
                bkns.Transport = "Airport Drop";
                bkns.TransPrice = 40;
            }
            else if (transport.SelectedValue == "03")
            {
                bkns.Transport = "Airport Two Way";
                bkns.TransPrice = 80;
            }

            bkns.Mem = Convert.ToInt32(txtmem.Text);
            bkns.Night = Convert.ToInt32(txtngt.Text);
            bkns.Norooms1 = Convert.ToInt32(txtNoRooms.Text);
            bkns.Total = (270 * bkns.Mem * bkns.Norooms1) + (10 * bkns.Night) + bkns.FoodPrice + bkns.TransPrice;

            string Ttotal = bkns.Total.ToString();
            Label23.Text = "USD: " + Ttotal.ToString();
        }

        private void LoadString()
        {


            Thread.CurrentThread.CurrentCulture = new CultureInfo(Session["Lang"].ToString());
            rm = new ResourceManager("WebApplication8.App_GlobalResources.Luxury-Suites", Assembly.GetExecutingAssembly());
            ci = Thread.CurrentThread.CurrentCulture;

            HyperLink1.Text = rm.GetString("Home", ci);
            HyperLink2.Text = rm.GetString("Rooms", ci);
            HyperLink6.Text = rm.GetString("Gallery", ci);
            HyperLink4.Text = rm.GetString("Profile", ci);
            HyperLink3.Text = rm.GetString("SignIn", ci);
            HyperLink5.Text = rm.GetString("Contact", ci);
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
            Label13.Text = rm.GetString("Label13", ci);
            Label14.Text = rm.GetString("Label14", ci);
            Label15.Text = rm.GetString("Label15", ci);
            Label16.Text = rm.GetString("Label16", ci);
            Label17.Text = rm.GetString("Label17", ci);
            Label18.Text = rm.GetString("Label18", ci);
            Label19.Text = rm.GetString("Label19", ci);
            Label20.Text = rm.GetString("Label20", ci);
            Label21.Text = rm.GetString("Label21", ci);
            //Label22.Text = rm.GetString("Label22", ci);
            //Label23.Text = rm.GetString("Label23", ci);
            Label24.Text = rm.GetString("Label24", ci);
            Label25.Text = rm.GetString("Label25", ci);
            Button1.Text = rm.GetString("Button1", ci);
            BtnSubmit.Text = rm.GetString("BtnSubmit", ci);
            Label26.Text = rm.GetString("Label26", ci);
            Label27.Text = rm.GetString("Label27", ci);
            Label28.Text = rm.GetString("Label28", ci);
            Label29.Text = rm.GetString("Label29", ci);
            Label30.Text = rm.GetString("Label30", ci);
            Label31.Text = rm.GetString("Label31", ci);
            Label32.Text = rm.GetString("Label32", ci);
            Label33.Text = rm.GetString("Label33", ci);
            Label34.Text = rm.GetString("Label34", ci);
            Label35.Text = rm.GetString("Label35", ci);
            Label36.Text = rm.GetString("Label36", ci);
            Label37.Text = rm.GetString("Label37", ci);

            BtnRest.Text = rm.GetString("BtnRest", ci);
            RequiredFieldValidator1.Text = rm.GetString("RequiredFieldValidator1", ci);
            RequiredFieldValidator2.Text = rm.GetString("RequiredFieldValidator2", ci);
            RequiredFieldValidator3.Text = rm.GetString("RequiredFieldValidator3", ci);
            RequiredFieldValidator4.Text = rm.GetString("RequiredFieldValidator4", ci);
            RequiredFieldValidator5.Text = rm.GetString("RequiredFieldValidator5", ci);
            RequiredFieldValidator7.Text = rm.GetString("RequiredFieldValidator7", ci);
            RequiredFieldValidator8.Text = rm.GetString("RequiredFieldValidator8", ci);

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
                Response.Redirect("~/Luxury-Suites.aspx");
            }
            else if (Session["Lang"].ToString() == "ar-AE")
            {

                Session["CurrentTheam"] = "Arabic"; // change theme
                Response.Redirect("~/Luxury-Suites.aspx");
            }
            else
            {
                Session["CurrentTheam"] = "Theme 00";
                Response.Redirect("~/Luxury-Suites.aspx");
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
            Response.Redirect("~/Luxury-Suites.aspx?Theme=" + name);

        }

    }
}