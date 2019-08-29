using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using EntityLayer;
using System.Web.SessionState;

namespace WebApplication8
{
  
    public class Handler1 : IHttpHandler
    {
        
        
        UserProfileSettings df = new UserProfileSettings();
       

        public void ProcessRequest(HttpContext context)
        {

            df.con.Open();
            df.query = "Select pic from tblPics";
            SqlCommand cmd = new SqlCommand(df.query,df.con);
            SqlDataReader dr = cmd.ExecuteReader();
         
            dr.Read();
            context.Response.BinaryWrite((byte[])dr[0]);
            context.Response.End();
            df.con.Close();
     

        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}