using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DataAccessLayer;
using EntityLayer;

namespace BusinessLayer
{
    public class AdminBusinessClass
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        public static Boolean AddNewAdmin(Admin newAdmin, string fname, string lname, string Mail, string pw, string nic, string age, string addr, string date)
        {

            Boolean result = false;

            newAdmin.Nic = nic;
            newAdmin.Fname = fname;
            newAdmin.Lname = lname;
            newAdmin.Address = addr;
            newAdmin.Mail = Mail;
            newAdmin.Age = age;
            newAdmin.Password=pw;
            newAdmin.Date1 = date;

            AdminDAClass.insertAdmin(newAdmin);
            result = true;
            return result;


        }

        public static Boolean verifyAdmin(Admin newAdmin)
        {
            Boolean ans = false;

            ans = AdminDAClass.verify(newAdmin);
            return ans;

        }
        public static Admin login(Admin newAdmin)
        {

            newAdmin = AdminDAClass.loginadmin(newAdmin);
            return newAdmin;

        }

        public static Boolean UpdateAdmin(Admin newAdmin, string fname, string lname, string Mail, string pw, string nic, string age, string addr)
        {

            Boolean result = false;

            newAdmin.Nic = nic;
            newAdmin.Fname = fname;
            newAdmin.Lname = lname;
            newAdmin.Address = addr;
            newAdmin.Mail = Mail;
            newAdmin.Age = age;
            newAdmin.Password = pw;
            

            AdminDAClass.UpdateAdminDetails(newAdmin);
            result = true;
            return result;


        }

        public static List<Admin> ViewAdminDetails(Admin adminDetl)
        {
            return AdminDAClass.viewAdmin(adminDetl);

        }
        //public static void DeleteAdmin(Admin adm)
        //{
        //    UserDAClass.deteleUr(adm);
        //}


        public Boolean updateFooddetatils(string foodname, string filename, string hyperlink, string region)
        {
         
           string fileurl = "IImages/" + filename;
           string language = region;
           string food_name = foodname;
           string foodDetails = hyperlink;

           AdminDAClass.updatefoodDetails(language, food_name, fileurl, foodDetails);
            return true;
        }

        public static DataTable GetFoodDetails(string region)
        {
           
            if (region == "en-US")
            {
                return AdminDAClass.getFoodDetails(region);
            }
            else if (region == "fr-FR")
            {
                return AdminDAClass.getFoodDetails(region);
            }
            else{
                return AdminDAClass.getFoodDetails(region);
            }
            
        }
       
        
    }
}
