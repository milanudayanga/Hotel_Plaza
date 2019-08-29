using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Sql;
using DataAccessLayer;
using EntityLayer;

namespace DataAccessLayer

{
    public class UserDAClass
    {
        public static SqlConnection Sqlconnection()
        {

            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=HotelPlaza;Integrated Security=True");
            return con;
        }

        public static void insertUser(User newUser)
        {

            SqlConnection con = Sqlconnection();
            SqlCommand cmd;

            con.Open();

            cmd = new SqlCommand("insertNewUser", con);
            cmd.CommandType = CommandType.StoredProcedure;


            cmd.Parameters.AddWithValue("@FirstName",newUser.Fname1);
            cmd.Parameters.AddWithValue("@LastName",newUser.Lname1 );
            cmd.Parameters.AddWithValue("@Email", newUser.email);
            cmd.Parameters.AddWithValue("@Password", newUser.Password);
            cmd.Parameters.AddWithValue("@contactNo", newUser.ContactNo);
            cmd.Parameters.AddWithValue("@question", newUser.R_drown1);
            cmd.Parameters.AddWithValue("@age", newUser.Age);
            cmd.Parameters.AddWithValue("@nic", newUser.Nic);
            cmd.Parameters.AddWithValue("@answer", newUser.Answer);
            cmd.Parameters.AddWithValue("@date1", newUser.Date);
            cmd.Parameters.AddWithValue("@addr", newUser.Address);
            cmd.Parameters.AddWithValue("@nation", newUser.Nation);
            cmd.ExecuteNonQuery();
            con.Close();

        }

        public static User loginuser(User newUser)
        {
            SqlConnection con = Sqlconnection();
            SqlCommand cmd;
            con.Open();

            cmd = new SqlCommand("userLogin", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Email", newUser.email);
            cmd.Parameters.AddWithValue("@Password",newUser.Password);

            SqlDataReader rdr = cmd.ExecuteReader();

            while (rdr.Read())
            {
                newUser.Fname1 = rdr["FirstName"].ToString();
                newUser.Lname1 = rdr["LastName"].ToString();
            }

            con.Close();

            return newUser;
        }
    
        public static Boolean verify(User newUser)
        {
            Boolean status = false;

            SqlConnection con = Sqlconnection();
            SqlCommand cmd;
            con.Open();

            cmd = new SqlCommand("verifyUser", con);
            cmd.CommandType = CommandType.StoredProcedure;


            cmd.Parameters.AddWithValue("@Email", newUser.email);
            cmd.Parameters.AddWithValue("@Password", newUser.Password);


            SqlDataReader rdr = cmd.ExecuteReader();

            status = rdr.Read();


            con.Close();

            return status;
      
        }

        public static List<User> viewUsers()
        {

            List<User> UserList = new List<User>();

            SqlConnection con = Sqlconnection();
            SqlCommand cmd;

            con.Open();

            cmd = new SqlCommand("viewUsers", con);
            cmd.CommandType = CommandType.StoredProcedure;




            SqlDataReader rdr = cmd.ExecuteReader();

            while (rdr.Read())
            {

                User vUser = new User();

                vUser.email = rdr["Email"].ToString();
                vUser.Fname1 = rdr["FirstName"].ToString();
                vUser.Password = rdr["Password"].ToString();
                vUser.Address = rdr["addr"].ToString();
                vUser.ContactNo = rdr["contactNo"].ToString();
                vUser.Date = rdr["date1"].ToString();
                vUser.Nic = rdr["contactNo"].ToString();
                vUser.Age = rdr["age"].ToString();
                vUser.R_drown1 = rdr["question"].ToString();
                vUser.Answer = rdr["answer"].ToString();
                vUser.Nation = rdr["nation"].ToString();
                vUser.Lname1 = rdr["LastName"].ToString();
                UserList.Add(vUser);

            }

            con.Close();

            return UserList;

        }

        public static void deteleUr(User myUser)
        {

            SqlConnection con = Sqlconnection();
            SqlCommand cmd;
            con.Open();

            cmd = new SqlCommand("deteleadmin", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@email", myUser.email);

            cmd.ExecuteNonQuery();

            con.Close();

        }

        public void changePropic(User propicdtl)
        {
            SqlConnection con = Sqlconnection();
            SqlCommand cmd;

            con.Open();


            cmd = new SqlCommand("insert into tblPics values (@ids,@propic)", con);
            cmd.CommandType = CommandType.Text;

            cmd.Parameters.AddWithValue("@ids", propicdtl.email);
            cmd.Parameters.AddWithValue("@propic", propicdtl.picbyte);
            cmd.ExecuteNonQuery();

            con.Close();
        }

        public void rmvPropic(User rmvpro)
        {
            SqlConnection con = Sqlconnection();
            SqlCommand cmd;

            con.Open();


            cmd = new SqlCommand("Delete from tblPics where id=@ids", con);
            cmd.CommandType = CommandType.Text;

            cmd.Parameters.AddWithValue("@ids", rmvpro.email);
         
            cmd.ExecuteNonQuery();

            con.Close();
        }

        
        public static Boolean verifyrecoverpwd(User newuser)
        {
        
            Boolean status = false;

            SqlConnection con = Sqlconnection();
            SqlCommand cmd;
            con.Open();

            cmd = new SqlCommand("verifyrecoverpwd", con);
            cmd.CommandType = CommandType.StoredProcedure;


            cmd.Parameters.AddWithValue("@Email", newuser.email);
            cmd.Parameters.AddWithValue("@answer", newuser.Answer);
            cmd.Parameters.AddWithValue("@question", newuser.R_drown1);
            SqlDataReader rdr = cmd.ExecuteReader();

            status = rdr.Read();


            con.Close();

            return status;
      
        }

        public static Boolean recoverpwd(User newuser)
        {

            Boolean status = false;

            SqlConnection con = Sqlconnection();
            SqlCommand cmd;
            con.Open();

            cmd = new SqlCommand("recoverpwd", con);
            cmd.CommandType = CommandType.StoredProcedure;


            cmd.Parameters.AddWithValue("@Email", newuser.email);
            cmd.Parameters.AddWithValue("@Password", newuser.Password);

            SqlDataReader rdr = cmd.ExecuteReader();

            status = rdr.Read();


            con.Close();

            return status;

        }


        public static List<User> viewselectedUser(User userd)
        {
            List<User> vieSelecteddtl = new List<User>();

            SqlConnection con = Sqlconnection();
            SqlCommand cmd;

            con.Open();

            cmd = new SqlCommand("viewselectedUser", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Email", userd.email);

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                User userDtl = new User();
                userDtl.Fname1 = reader["FirstName"].ToString();
                userDtl.Lname1 = reader["LastName"].ToString();
                userDtl.ContactNo = reader["contactNo"].ToString();
                userDtl.Password = reader["Password"].ToString();
                userDtl.R_drown1 = reader["question"].ToString();
                userDtl.Date = reader["date1"].ToString();
                userDtl.Age = reader["age"].ToString();
                userDtl.Nic = reader["nic"].ToString();
                userDtl.Address = reader["addr"].ToString();
                userDtl.Nation = reader["nation"].ToString();
                userDtl.Answer = reader["answer"].ToString();
                vieSelecteddtl.Add(userDtl);
            }

            con.Close();

            return vieSelecteddtl;
        }

        public static void updateSelectedUsrDtl(User newUser)
        {
            SqlConnection con = Sqlconnection();
            SqlCommand cmd;

            con.Open();

            cmd = new SqlCommand("updateSelectedUsrDtl", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@FirstName", newUser.Fname1);
            cmd.Parameters.AddWithValue("@LastName", newUser.Lname1);
            cmd.Parameters.AddWithValue("@Email", newUser.email);
            cmd.Parameters.AddWithValue("@Password", newUser.Password);
            cmd.Parameters.AddWithValue("@contactNo", newUser.ContactNo);
            cmd.Parameters.AddWithValue("@question", newUser.R_drown1);
            cmd.Parameters.AddWithValue("@age", newUser.Age);
            cmd.Parameters.AddWithValue("@nic", newUser.Nic);
            cmd.Parameters.AddWithValue("@answer", newUser.Answer);
            cmd.Parameters.AddWithValue("@date1", newUser.Date);
            cmd.Parameters.AddWithValue("@addr", newUser.Address);
            cmd.Parameters.AddWithValue("@nation", newUser.Nation);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}
