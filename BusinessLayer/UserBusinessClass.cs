using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccessLayer;
using EntityLayer;

namespace BusinessLayer
{
    public class UserBusinessClass
    {
        public static Boolean AddNewUser(User newUser, string ID, string fname, string lname)
        {

            Boolean result = false;

            newUser.Id = ID;
            newUser.Fname1 = fname;
            newUser.Lname1 = lname;


            UserDAClass.insertUser(newUser);
            result = true;
            return result;

        }
    }
}


