using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DataAccessLayer;
using EntityLayer;
namespace BusinessLayer
{
    public class BookingsBusinessClass
    {
      

        public static Boolean AddNewBooking(Bookings bkns)
        {



            Boolean result = false;


            BookingsDAClass.InsertBooking(bkns);

            result = true;
            return result;


        }

        BookingsDAClass bkngs = new BookingsDAClass();
        SqlCommand cmd = new SqlCommand();

        public DataSet BL_bind()
        {

            return bkngs.AL_bind();

        }


        public void Bookingsupdate_Data(Bookings bkn)
        {
            cmd.Parameters.AddWithValue("@Email", bkn.Email);
            cmd.Parameters.AddWithValue("@firstname", bkn.Name);
            cmd.Parameters.AddWithValue("@surName", bkn.Surname);
            cmd.Parameters.AddWithValue("@Contact", bkn.Phone);
            cmd.Parameters.AddWithValue("@checkIn", bkn.Checkin1);
            cmd.Parameters.AddWithValue("@checkOut", bkn.Checkout1);
            cmd.Parameters.AddWithValue("@Total", bkn.Total);
            cmd.Parameters.AddWithValue("@mem", bkn.Mem);
            cmd.Parameters.AddWithValue("@night", bkn.Night);
            cmd.Parameters.AddWithValue("@RoomType", bkn.RoomType);
            cmd.Parameters.AddWithValue("@NoRooms", bkn.Norooms1);
            cmd.Parameters.AddWithValue("@Food", bkn.Food);
            cmd.Parameters.AddWithValue("@transport", bkn.Transport);
            bkngs.bookingupdate_data(cmd);
        }

        public void BookingsInsert_Data(Bookings bkn)
        {
            cmd.Parameters.AddWithValue("@Email", bkn.Email);
            cmd.Parameters.AddWithValue("@firstname", bkn.Name);
            cmd.Parameters.AddWithValue("@surName", bkn.Surname);
            cmd.Parameters.AddWithValue("@Contact", bkn.Phone);
            cmd.Parameters.AddWithValue("@checkIn", bkn.Checkin1);
            cmd.Parameters.AddWithValue("@checkOut", bkn.Checkout1);
            cmd.Parameters.AddWithValue("@Total", bkn.Total);
            cmd.Parameters.AddWithValue("@mem", bkn.Mem);
            cmd.Parameters.AddWithValue("@night", bkn.Night);
            cmd.Parameters.AddWithValue("@RoomType", bkn.RoomType);
            cmd.Parameters.AddWithValue("@NoRooms", bkn.Norooms1);
            cmd.Parameters.AddWithValue("@Food", bkn.Food);
            cmd.Parameters.AddWithValue("@transport", bkn.Transport);
            bkngs.bookingInsertData(cmd);
        }

        public void Bookingdeletedata(Bookings bkn)
        {
            cmd.Parameters.AddWithValue("@Email", bkn.Email);
            bkngs.bookingdelete(cmd);
        }


        public static List<Bookings> viewSelectedBookings(string email)
        {
            Bookings bkns = new Bookings();
            bkns.Email = email;
            return BookingsDAClass.viewselectedBookings(bkns);
 
        }



        public DataSet BL_bind(Bookings m)
        {
            return bkngs.bkindg(m);
        }
    }
}
