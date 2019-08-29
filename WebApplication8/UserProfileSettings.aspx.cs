using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

using BusinessLayer;
using EntityLayer;

namespace WebApplication8
{
    public partial class UserProfileSettings : System.Web.UI.Page
    {

        public SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=HotelPlaza;Integrated Security=True");
        public string query;
        SqlCommand cmd = new SqlCommand();
        User b = new User();
        UserBusinessClass ub = new UserBusinessClass();
       
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
          

            if (!IsPostBack)
            {
                GridBind();
            }
     
                  showData();

        }

        private void showData()
        {
            string email = Session["mail"].ToString();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "Select * from tblPics where id=@id";
            cmd.Parameters.AddWithValue("@id", email);
            da.SelectCommand = cmd;
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            
            con.Close();

        }
        public void GridBind()
        {
            string email = Session["mail"].ToString();
            UserGridView1.DataSource = ub.BL_bind(email);
            UserGridView1.DataBind();

        }

       

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            b.email = Session["mail"].ToString();
            b.Fname1 = txtFirstame.Text;
            b.Lname1 = txtSecondName.Text;
            b.ContactNo = txtContactNo.Text;
            b.Password = txtpassword.Text;
            ub.update_Data(b);
            GridBind();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            b.email = Session["mail"].ToString();
            ub.deletedata(b);
            GridBind();

            Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect script",
               "alert('Thank You, Good Luck!'); location.href='SignIn.aspx';",
               true);

            Session["mail"] = null;

        }

        protected void btnPropic_Click(object sender, EventArgs e)
        {
            b.email = Session["mail"].ToString();
            int imaglen = FileUpload1.PostedFile.ContentLength;
             b.picbyte = new byte[imaglen];
             FileUpload1.PostedFile.InputStream.Read(b.picbyte, 0, imaglen);
            
             ub.changeProPic(b);
             Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect script",
              "alert('Successfully Added the Profile Picture'); location.href='UserProfileSettings.aspx';",
              true);
  
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
           b.email = Session["mail"].ToString();
           ub.removePropic(b);
           Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect script",
           "alert('Successfully Removed the Profile Picture'); location.href='UserProfileSettings.aspx';",
           true);
        }
    

    }
}