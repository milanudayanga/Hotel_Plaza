using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityLayer
{
    public class User
    {

        private string Fname;
        private string Lname;
        private string Email;
        private string password;
        private string contactNo;
        private byte[] picbyte1;
        private string R_drown;
        private string age;
        private string nic;

        public string Nic
        {
            get { return nic; }
            set { nic = value; }
        }

       

        public string Age
        {
            get { return age; }
            set { age = value; }
        }
        private string address;

        public string Address
        {
            get { return address; }
            set { address = value; }
        }
        private string date;

        public string Date
        {
            get { return date; }
            set { date = value; }
        }
      
        private string answer;

        public string Answer
        {
            get { return answer; }
            set { answer = value; }
        }

        private string nation;

        public string Nation
        {
            get { return nation; }
            set { nation = value; }
        }


        public string R_drown1
        {
            get { return R_drown; }
            set { R_drown = value; }
        }

        public byte[] picbyte
        {
            get { return picbyte1; }
            set { picbyte1 = value; }
        }

      
  
        public User()
        {


        }
        public User(string eml, string pass)
        {
         
            Email = eml;
            Fname = null;
            Lname = null;
            contactNo = null;
            password = pass;
     
        }

        public string Fname1
        {
            get { return Fname; }
            set { Fname = value; }
        }
        public string Lname1
        {
            get { return Lname; }
            set { Lname = value; }
        }

        public string email
        {
            get { return Email; }
            set { Email = value; }
        }
        public string Password
        {
            get { return password; }
            set { password = value; }
        }

        public string ContactNo
        {
            get { return contactNo; }
            set { contactNo = value; }
        }

    }
}





