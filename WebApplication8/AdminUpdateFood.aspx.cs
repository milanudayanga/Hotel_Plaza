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
    public partial class AdminUpdateFood : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void update_Click(object sender, EventArgs e)
        {
            AdminBusinessClass adm = new AdminBusinessClass();
            string foodname = FoodName.Text;
            string filename = FileUpload.FileName;
            string hyperlink = Hyperlink.Text;
            string region;

            if (RadioButton3.Checked == true)
            {
                region = "en-US";
            }
            else if (RadioButton1.Checked == true)
            {
                region = "fr-FR";

            }
            else
            {
                region = "ar-AE";
            }
            if (adm.updateFooddetatils(foodname, filename, hyperlink, region))
            {
                confirm.Text = "Updated";
            }
            
           
              
        }
    }
}