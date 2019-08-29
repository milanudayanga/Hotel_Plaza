using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DataAccessLayer
{
    public class DataAccess
    {
       
     SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HotelPlazaConnectionString"].ConnectionString);
     

     
            public void update_data(SqlCommand cmd)
            {
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "UpdateUser";
               
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.ExecuteNonQuery();

            }

          

            public void delete(SqlCommand cmd)
            {
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "deleteUser";
             
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.ExecuteNonQuery();

            }


            public DataSet AL_bind(string email)
            {

                SqlDataAdapter sda = new SqlDataAdapter("select * from UserDetails where Email=@Email", con);
                sda.SelectCommand.Parameters.AddWithValue("@Email", email);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                return ds;


            }
        }
    
}
