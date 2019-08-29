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
    public class AdminDAClass
    {
        public static SqlConnection Sqlconnection()
        {

            SqlConnection con = new SqlConnection("Data Source=Dream;Initial Catalog=HotelPlaza;Integrated Security=True");
            return con;
        }

        public static void insertAdmin(Admin newAdmin)
        {
            SqlConnection con = Sqlconnection();
            SqlCommand cmd;

            con.Open();
            cmd = new SqlCommand("insertnewAdmin", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@nic", newAdmin.Nic);
            cmd.Parameters.AddWithValue("@fname", newAdmin.Fname);
            cmd.Parameters.AddWithValue("@lname", newAdmin.Lname);
            cmd.Parameters.AddWithValue("@mail", newAdmin.Mail);
            cmd.Parameters.AddWithValue("@password", newAdmin.Password);
            cmd.Parameters.AddWithValue("@address", newAdmin.Address);
            cmd.Parameters.AddWithValue("@age", newAdmin.Age);
            cmd.Parameters.AddWithValue("@date", newAdmin.Date1);
            cmd.ExecuteNonQuery();

            con.Close();

        }

        public static Boolean verify(Admin newAdmin)
        {
            Boolean status = false;
            SqlConnection con = Sqlconnection();
            SqlCommand cmd;

            con.Open();

            cmd = new SqlCommand("SelectAdmin", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@mail", newAdmin.Mail);
            cmd.Parameters.AddWithValue("@password", newAdmin.Password);



            SqlDataReader rdr = cmd.ExecuteReader();

            status = rdr.Read();


            con.Close();

            return status;
        }


        public static Admin loginadmin(Admin newAdmin)
        {
            SqlConnection con = Sqlconnection();
            SqlCommand cmd;
            con.Open();


            cmd = new SqlCommand("SelectAdmin2", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@mail", newAdmin.Mail);
            cmd.Parameters.AddWithValue("@password", newAdmin.Password);



            SqlDataReader rdr = cmd.ExecuteReader();

            while (rdr.Read())
            {

       
                newAdmin.Fname = rdr["FirstName"].ToString();
                newAdmin.Lname = rdr["LastName"].ToString();
                //newAdmin.ContactNo = rdr["contactNo"].ToString();
               
            }

            con.Close();

            return newAdmin;
        }


        public static void UpdateAdminDetails(Admin newAdmin)
        {
            SqlConnection con = Sqlconnection();
            SqlCommand cmd;
            con.Open();


            cmd = new SqlCommand("UpdateAdminDetails", con);
            cmd.CommandType = CommandType.StoredProcedure;


            cmd.Parameters.AddWithValue("@Id", newAdmin.Nic);
            cmd.Parameters.AddWithValue("@fname", newAdmin.Fname);
            cmd.Parameters.AddWithValue("@lname", newAdmin.Lname);
            cmd.Parameters.AddWithValue("@age", newAdmin.Age);
            cmd.Parameters.AddWithValue("@address", newAdmin.Address);
            cmd.Parameters.AddWithValue("@mail", newAdmin.Mail);
            cmd.Parameters.AddWithValue("@password", newAdmin.Password);
          
            cmd.ExecuteNonQuery();

            con.Close();
        }

        public static List<Admin> viewAdmin(Admin adminDetl)
        {

            List<Admin> admindetl = new List<Admin>();

            SqlConnection con = Sqlconnection();
            SqlCommand cmd;

            con.Open();

            cmd = new SqlCommand("SelectAdmin3", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Email", adminDetl.Mail);



            SqlDataReader rdr = cmd.ExecuteReader();

            while (rdr.Read())
            {

                Admin vAdmin = new Admin();


                vAdmin.Mail = rdr["Email"].ToString();
                vAdmin.Fname = rdr["FirstName"].ToString();
                vAdmin.Lname = rdr["LastName"].ToString();
                vAdmin.Nic = rdr["NIC"].ToString();
                vAdmin.Age = rdr["Age"].ToString();
                vAdmin.Password = rdr["Password"].ToString();

                admindetl.Add(vAdmin);

            }

            con.Close();

            return admindetl;

        }

        //public static void deteleUr(User myUser)
        //{

        //    SqlConnection con = Sqlconnection();
        //    SqlCommand cmd;
        //    con.Open();



        //    cmd = new SqlCommand("DELETE FROM UserDetails where Email =@email", con);
        //    cmd.CommandType = CommandType.Text;



        //    cmd.Parameters.AddWithValue("@email", myUser.email);



        //    cmd.ExecuteNonQuery();

        //    con.Close();



        //}


        public static void updatefoodDetails(string lanuage, string food_name, string filepath, string foodDetails)
        {
            
              SqlConnection con = Sqlconnection();
                 SqlCommand com;
                     com = new SqlCommand("updateFoodDtl", con);
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.Add("@foodname", SqlDbType.VarChar).Value = food_name;
                    com.Parameters.Add("@filepath", SqlDbType.VarChar).Value = filepath;
                    com.Parameters.Add("@lanuage", SqlDbType.VarChar).Value = lanuage;
                    com.Parameters.Add("@hyperlink", SqlDbType.VarChar).Value = foodDetails;
                    con.Open();
                    com.ExecuteNonQuery();
                    con.Close();

        }

        public static DataTable getFoodDetails(string lanuage)
        {
            DataTable dt = new DataTable();
            try
            {
                SqlConnection con = Sqlconnection();
                SqlCommand com;
                con.Open();
                com = new SqlCommand("getFoodDtl", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.Add("@lanuage", SqlDbType.VarChar).Value = lanuage;
                com.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(com);
                da.Fill(dt);
                con.Close();
                return dt;
            }
            catch (Exception)
            {
            }
            return dt;
        }
    }
}
