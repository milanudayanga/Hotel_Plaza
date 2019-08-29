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
    public class MessageDAClass
    {
        public static SqlConnection Sqlconnection()
        {

            SqlConnection con = new SqlConnection("Data Source=Dream;Initial Catalog=HotelPlaza;Integrated Security=True");
            return con;
        }

        public static void AddUserMsg (Message mymsg)
        {
            SqlConnection con = Sqlconnection();
            SqlCommand cmd;

            con.Open();


            cmd = new SqlCommand("addnewMsg", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Email",mymsg.Email);
            cmd.Parameters.AddWithValue("@date1", mymsg.Date);
            cmd.Parameters.AddWithValue("@msg", mymsg.Msg);
            cmd.Parameters.AddWithValue("@type1", mymsg.Type);
            cmd.Parameters.AddWithValue("@name", mymsg.Name);
            cmd.ExecuteNonQuery();

            con.Close();


        }

        public static List<Message> viewUserMsg()
        {

            List<Message> MyMsglList = new List<Message>();

            SqlConnection con = Sqlconnection();
            SqlCommand cmd;

            con.Open();

            cmd = new SqlCommand("viewMsgDetls", con);
            cmd.CommandType = CommandType.StoredProcedure;


            SqlDataReader rdr = cmd.ExecuteReader();

            while (rdr.Read())
            {

                Message mymessage = new Message();

           
                mymessage.Msg = rdr["msg"].ToString();
                mymessage.Date = rdr["date"].ToString();

                MyMsglList.Add(mymessage);
            }

            con.Close();
            return MyMsglList;
        }

        public static void AddAdminMsg(Message mymsg)
        {
            SqlConnection con = Sqlconnection();
            SqlCommand cmd;

            con.Open();
                

            cmd = new SqlCommand("addAdminmsg", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@type", mymsg.Type);
            cmd.Parameters.AddWithValue("@email", mymsg.Email);
            cmd.Parameters.AddWithValue("@Date", mymsg.Date);
            cmd.Parameters.AddWithValue("@msg", mymsg.Msg);
        

            cmd.ExecuteNonQuery();

            con.Close();


        }

        public static List<Message> viewAdminSentMsg(Message mymsg)
        {
            List<Message> AdminSentMsglList = new List<Message>();

            SqlConnection con = Sqlconnection();
            SqlCommand cmd;

            con.Open();
            // cmd = new SqlCommand();

            cmd = new SqlCommand("SelectAdminSentMsg", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@type", mymsg.Type);

            SqlDataReader rdr = cmd.ExecuteReader();

            while (rdr.Read())
            {
                Message mysentmessage = new Message();
                mysentmessage.Date = rdr["date"].ToString();
                mysentmessage.Email = rdr["Email"].ToString();
                mysentmessage.Msg = rdr["msg"].ToString();
             



                AdminSentMsglList.Add(mysentmessage);
            }

            con.Close();

            return AdminSentMsglList;

        }

        public static List<Message> viewAdmininboxMsg(Message mymsg)
        {
            List<Message> AdmininboxlList = new List<Message>();

            SqlConnection con = Sqlconnection();
            SqlCommand cmd;

            con.Open();
            // cmd = new SqlCommand();

            cmd = new SqlCommand("SelectAdminInboxMsg", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@type", mymsg.Type);

            SqlDataReader rdr = cmd.ExecuteReader();

            while (rdr.Read())
            {
                Message admininbox = new Message();
                admininbox.Date = rdr["date"].ToString();
                admininbox.Email = rdr["Email"].ToString();
                admininbox.Msg = rdr["msg"].ToString();




                AdmininboxlList.Add(admininbox);
            }

            con.Close();

            return AdmininboxlList;

        }



        public static List<Message> viewUserinboxMsg(Message userIn)
        {
            List<Message> UserinboxlList = new List<Message>();

            SqlConnection con = Sqlconnection();
            SqlCommand cmd;

            con.Open();


            cmd = new SqlCommand("UserinboxMsg", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@type", userIn.Type);
            cmd.Parameters.AddWithValue("@Email", userIn.Email);

            SqlDataReader rdr = cmd.ExecuteReader();

            while (rdr.Read())
            {
                Message Userinbox = new Message();
                Userinbox.Date = rdr["date"].ToString();
                Userinbox.Email = rdr["Email"].ToString();
                Userinbox.Msg = rdr["msg"].ToString();


                UserinboxlList.Add(Userinbox);
            }

            con.Close();

            return UserinboxlList;
        }

        public static List<Message> viewUserSentMsg(Message usermsg)
        {
            List<Message> UserSentlList = new List<Message>();

            SqlConnection con = Sqlconnection();
            SqlCommand cmd;

            con.Open();
            // cmd = new SqlCommand();

            cmd = new SqlCommand("viewUserSentMsg", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@type", usermsg.Type);
            cmd.Parameters.AddWithValue("@Email", usermsg.Email);

            SqlDataReader rdr = cmd.ExecuteReader();

            while (rdr.Read())
            {
                Message UserSent = new Message();
                UserSent.Date = rdr["date"].ToString();
                UserSent.Email = rdr["Email"].ToString();
                UserSent.Msg = rdr["msg"].ToString();


                UserSentlList.Add(UserSent);
            }

            con.Close();

            return UserSentlList;
           
        }

        public static void deleteU_SentMsg(Message msg)
        {

            SqlConnection con = Sqlconnection();
            SqlCommand cmd;

            con.Open();
          

            cmd = new SqlCommand("deleteUsersentMsg", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@type", msg.Type);
            cmd.Parameters.AddWithValue("@Email", msg.Email);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public static void deleteAdminInboxMsg(Message mymsg)
        {
            SqlConnection con = Sqlconnection();
            SqlCommand cmd;

            con.Open();


            cmd = new SqlCommand("deleteAdmisentMsg", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@type", mymsg.Type);
            cmd.Parameters.AddWithValue("@Email", mymsg.Email);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public static void deleteAdminSMsg(Message mymsg)
        {
            SqlConnection con = Sqlconnection();
            SqlCommand cmd;

            con.Open();


            cmd = new SqlCommand("deleteAdmisentMsg", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@type", mymsg.Type);
            cmd.Parameters.AddWithValue("@Email", mymsg.Email);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}
