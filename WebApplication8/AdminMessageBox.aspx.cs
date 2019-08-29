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
    public partial class AdminMessageBox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                Message mymsg = new Message();

            List<Message> AdminInboxMsglList = MessageBusinessClass.ViewAdminInboxMessage("user");



            cdcatalog.DataSource = AdminInboxMsglList;

            cdcatalog.DataBind();

               
        }
        
    }
}
