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
    public partial class AdminProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
            Admin vUser = new Admin();
            
            vUser.Mail = Session["mail"].ToString();

            List<Admin> adm_PD = AdminBusinessClass.ViewAdminDetails(vUser);


            
            cdcatalog.DataSource = adm_PD;

            cdcatalog.DataBind();
            

        }
        
    }
}