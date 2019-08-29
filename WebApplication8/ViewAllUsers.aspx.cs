using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityLayer;
using BusinessLayer;
namespace WebApplication8
{
    public partial class ViewAllUsers1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User vUser = new User();

            List<User> MyUserList = UserBusinessClass.ViewUsers();


            cdcatalog.DataSource = MyUserList;

            cdcatalog.DataBind();
            

            
        }
    }
}