using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Sql;

using BusinessLayer;
using EntityLayer;

namespace WebApplication8
{
    public partial class AdminManageBookings : System.Web.UI.Page
    {
        Bookings b = new Bookings();
        BookingsBusinessClass ub = new BookingsBusinessClass();

        protected void Page_Load(object sender, EventArgs e)
        {
           txtCheckIn.Enabled=false;
            txtCheckOut.Enabled=false;

            if (!IsPostBack)
            {
                GridBind();
            }


        }

        public void GridBind()
        {
            

            UserBknsGridView.DataSource = ub.BL_bind();
            UserBknsGridView.DataBind();

        }



        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            b.Email = txtEmail.Text;
            b.Name = txtFirstName.Text;
            b.Surname = txtSurName.Text;
            b.Phone = txtPhone.Text;
            b.Checkin1 = txtCheckIn.Text;
            b.Checkout1 = txtCheckOut.Text;
            b.Total=Convert.ToInt32(Request["txtTotal"].ToString());
            b.Mem = Convert.ToInt32(Request["txtMembers"].ToString());
            b.Night = Convert.ToInt32(Request["txtNights"].ToString());
            b.RoomType = txtRoomType.Text;
            b.Norooms1 = Convert.ToInt32(Request["txtNoRooms"].ToString());
            b.Food = txtFood.Text;
            b.Transport = txtTransport.Text;
            ub.Bookingsupdate_Data(b);
            GridBind();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            b.Email = txtEmail.Text;
            ub.Bookingdeletedata(b);
            GridBind();
        }

       
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            b.Email = txtEmail.Text;
            b.Name = txtFirstName.Text;
            b.Surname = txtSurName.Text;
            b.Phone = txtPhone.Text;
            b.Checkin1 = txtCheckIn.Text;
            b.Checkout1 = txtCheckOut.Text;
            b.Total=Convert.ToInt32(Request["txtTotal"].ToString());
            b.Mem = Convert.ToInt32(Request["txtMembers"].ToString());
            b.Night = Convert.ToInt32(Request["txtNights"].ToString());
            b.RoomType = txtRoomType.Text;
            b.Norooms1 = Convert.ToInt32(Request["txtNoRooms"].ToString());
            b.Food = txtFood.Text;
            b.Transport = txtTransport.Text;
            ub.BookingsInsert_Data(b);
            GridBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {


            string email = txtEmail.Text;
            Bookings bkns = new Bookings();

            List<Bookings> selectedBooking = BookingsBusinessClass.viewSelectedBookings(email);

            foreach (Bookings item in selectedBooking)
            {
                txtFirstName.Text = item.Name;
                txtSurName.Text = item.Surname;
                txtPhone.Text = item.Phone;
                txtCheckIn.Text =item.Checkin1;
                txtCheckOut.Text = item.Checkout1;
                txtTotal.Text = item.Total.ToString();
                txtMembers.Text = item.Mem.ToString();
                txtNights.Text = item.Night.ToString();
                txtRoomType.Text = item.RoomType;
                txtNoRooms.Text = item.Norooms1.ToString();
                txtFood.Text = item.Food;
                txtTransport.Text = item.Transport;


            }

        
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["mail"] = null;
            Response.Redirect("~/SignIn.aspx");
        }

        protected void checkin_SelectionChanged(object sender, EventArgs e)
        {
            txtCheckIn.Text = checkin.SelectedDate.ToShortDateString();
        }

        protected void checkout_SelectionChanged(object sender, EventArgs e)
        {
            txtCheckOut.Text = checkout.SelectedDate.ToShortDateString();
        }

    
    }
}