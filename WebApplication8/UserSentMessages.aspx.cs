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
    public partial class UserSentMessages : System.Web.UI.Page
    {
        Message mymsg = new Message();

        protected void Page_Load(object sender, EventArgs e)
        {

            string email = Session["mail"].ToString();
         
            List<Message> UserSentMsglList = MessageBusinessClass.UserSentMessage("user",email);



            cdcatalog.DataSource = UserSentMsglList;

            cdcatalog.DataBind();
        }

       

     


    }




}