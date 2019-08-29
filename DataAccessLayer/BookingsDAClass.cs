using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Sql;
using EntityLayer;


namespace DataAccessLayer
{
    public class BookingsDAClass
    {
      public  SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HotelPlazaConnectionString"].ConnectionString);
        
        public static SqlConnection Sqlconnection()
        {

            SqlConnection con = new SqlConnection("Data Source=Dream;Initial Catalog=HotelPlaza;Integrated Security=True");
            return con;
        }

        public static void InsertBooking(Bookings newBookings)
        {

            SqlConnection con = Sqlconnection();
            SqlCommand cmd;
            con.Open();


            cmd = new SqlCommand("InsertBooking", con);
            
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Email", newBookings.Email);
            cmd.Parameters.AddWithValue("@name", newBookings.Name);
            cmd.Parameters.AddWithValue("@surname", newBookings.Surname);
            cmd.Parameters.AddWithValue("@phone", newBookings.Phone);
            cmd.Parameters.AddWithValue("@checkin", newBookings.Checkin1);
            cmd.Parameters.AddWithValue("@checkout", newBookings.Checkout1);
            cmd.Parameters.AddWithValue("@total", newBookings.Total);
            cmd.Parameters.AddWithValue("@Memebers", newBookings.Mem);
            cmd.Parameters.AddWithValue("@Nights", newBookings.Night);
            cmd.Parameters.AddWithValue("@NoRooms", newBookings.Norooms1);
            cmd.Parameters.AddWithValue("@RoomType", newBookings.RoomType);
            cmd.Parameters.AddWithValue("@foodtype", newBookings.Food);
            cmd.Parameters.AddWithValue("@transport", newBookings.Transport);

            cmd.ExecuteNonQuery();

            con.Close();

        }

      
   


            public DataSet AL_bind()
            {

                SqlDataAdapter sda = new SqlDataAdapter("bknselectUser", conn);
               
                DataSet ds = new DataSet();
                sda.Fill(ds);
                return ds;


            }


            public  void bookingInsertData(SqlCommand cmd)
            {
                conn.Open();
                cmd.Connection = conn;
                cmd.CommandText = "bkninsertUser";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.ExecuteNonQuery();

            }



            public void bookingupdate_data(SqlCommand cmd)
            {
                conn.Open();
                cmd.Connection = conn;
                cmd.CommandText = "bknUpdateUser";

                cmd.CommandType = CommandType.StoredProcedure;
                cmd.ExecuteNonQuery();

            }


            public void bookingdelete(SqlCommand cmd)
            {
                conn.Open();
                cmd.Connection = conn;
                cmd.CommandText = "bkndeleteUser";

                cmd.CommandType = CommandType.StoredProcedure;
                cmd.ExecuteNonQuery();

            }


            public static List<Bookings> viewselectedBookings(Bookings bkns)
            {
                List<Bookings> vieSelectedBkgs = new List<Bookings>();

                SqlConnection con = Sqlconnection();
                SqlCommand cmd;

                con.Open();

                cmd = new SqlCommand("viewselectedBookings", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Email", bkns.Email);

                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Bookings bknss = new Bookings();
                  bknss.Name    = reader["name"].ToString();
                  bknss.Surname = reader["surname"].ToString();
                  bknss.Phone  = reader["phone"].ToString();
                  bknss.Checkin1 = reader["checkin"].ToString();
                  bknss.Checkout1    = reader["checkout"].ToString();
                  bknss.Mem = Convert.ToInt32(reader["Memebers"].ToString());
                  bknss.Night = Convert.ToInt32(reader["Nights"].ToString());
                  bknss.Total = Convert.ToInt32(reader["total"].ToString()); ;
                  bknss.Transport = reader["Transport"].ToString();
                  bknss.RoomType = reader["RoomType"].ToString();
                  bknss.Food = reader["Food"].ToString();
                  bknss.Norooms1 = Convert.ToInt32(reader["NoRooms"].ToString());
                  bknss.Food = reader["Food"].ToString();
                  bknss.Transport = reader["Transport"].ToString();

                  vieSelectedBkgs.Add(bknss);
                }

                con.Close();

                return vieSelectedBkgs;
            }

            public  DataSet bkindg(Bookings bkn)
            {

                SqlDataAdapter sdav = new SqlDataAdapter("Select * from Bookings where Email=@Email",conn);
                sdav.SelectCommand.Parameters.AddWithValue("@Email", bkn.Email);
               
                DataSet ds = new DataSet();
                sdav.Fill(ds);
                return ds;

            }
    }
 
}
