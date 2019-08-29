using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DataAccessLayer;
using EntityLayer;

namespace BusinessLayer
{
    public class UserBusinessClass{

    
        public static Boolean AddNewUser(User newUser, string fname, string lname, string Email,string password,string nic, string address, string contact , string age, string date,string answer,string nation)
        {

            Boolean result = false;

          
            newUser.Fname1 = fname;
            newUser.Lname1 = lname;
            newUser.email = Email;
            newUser.Password = password;
            newUser.Address = address;
            newUser.ContactNo = contact;
            newUser.Age = age;
            newUser.Date = date;
            newUser.Answer = answer;
            newUser.Nation = nation;
            newUser.Nic = nic;

            UserDAClass.insertUser(newUser);
            result = true;
            return result;


        }

        public static User login(User newUser)
        {

            newUser = UserDAClass.loginuser(newUser);
            return newUser;

        }

        public static Boolean verifyUser(User newUser)
        {
            Boolean ans = false;

            ans = UserDAClass.verify(newUser);

            return ans;

        }

        public static List<User> ViewUsers()
        {
            return UserDAClass.viewUsers();

        }

        public static void DeleteUser(User customer)
        {
            UserDAClass.deteleUr(customer);
            
        }


       DataAccess da = new DataAccess();

        SqlCommand cmd = new SqlCommand();

        public DataSet BL_bind(string email)
        {

            return da.AL_bind(email);

        }

      


        public void update_Data(User UsrDtl)
        {
            cmd.Parameters.AddWithValue("@Email", UsrDtl.email);
            cmd.Parameters.AddWithValue("@firstname", UsrDtl.Fname1);
            cmd.Parameters.AddWithValue("@lastName", UsrDtl.Lname1);
            cmd.Parameters.AddWithValue("@Contact", UsrDtl.ContactNo);
            cmd.Parameters.AddWithValue("@Password", UsrDtl.Password);
            da.update_data(cmd);
          
        }


        public void deletedata(User UsrDtl)
        {
            cmd.Parameters.AddWithValue("@Email", UsrDtl.email);
            da.delete(cmd);
        }

        UserDAClass ud = new UserDAClass();

        public void changeProPic(User propicdtl)
        {

            ud.changePropic(propicdtl);

            
        }

        public void removePropic(User remvPropic)
        {
            ud.rmvPropic(remvPropic);
        }

        public static bool verifyrecoverpassword(User newuser, string Email, string Password, string Answer)
        {

            Boolean result = false;
            newuser.email = Email;
            newuser.Password = Password;
            newuser.Answer = Answer;

            result = UserDAClass.verifyrecoverpwd(newuser); 
            return result;
        }

        public static bool recoverpassword(User newuser, string Email, string Password, string Answer)
        {
            Boolean result = false;

            newuser.email = Email;
            newuser.Password = Password;
            newuser.Answer = Answer;

            result = UserDAClass.recoverpwd(newuser);
            return result;
        }

        public static List<User> viewSelectedUser(string email)
        {
            User userd = new User();
            userd.email = email;
            return UserDAClass.viewselectedUser(userd);
        }



        public static void updateSelectedUserdtl(User item)
        {
            UserDAClass.updateSelectedUsrDtl(item);
        }
    }
}

    

