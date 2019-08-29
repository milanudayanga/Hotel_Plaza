using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Sql;

using BusinessLayer;
using EntityLayer;

namespace WebApplication8
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        Bookings usr = new Bookings();
        BookingsBusinessClass ub = new BookingsBusinessClass();

        protected void Page_Load(object sender, EventArgs e)
        {
             usr.Email= Session["mail"].ToString();

             UserBknsGridView1.DataSource = ub.BL_bind(usr);
            UserBknsGridView1.DataBind();


        }

    }
}