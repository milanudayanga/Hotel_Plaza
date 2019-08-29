using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityLayer
{
    public class Admin
    {
        private string NIC;


        private string fname;


        private string lname;


        private string mail;


        private string password;


        private string Addr;
        private string Age1;
        private string Date;

        public Admin()
        {

        }

        public Admin(string eml, string pw)
        {
            NIC = null;
            mail = eml;
            fname = null;
            lname = null;
            Addr = null;
            password = pw;
            Age1 = null;
            Date = null;
        }
        public string Date1
        {
            get { return Date; }
            set { Date = value; }
        }
        public string Age
        {
            get { return Age1; }
            set { Age1 = value; }
        }

        public string Nic
        {
            get { return NIC; }
            set { NIC = value; }
        }
        public string Fname
        {
            get { return fname; }
            set { fname = value; }
        }
        public string Lname
        {
            get { return lname; }
            set { lname = value; }
        }
        public string Mail
        {
            get { return mail; }
            set { mail = value; }
        }
        public string Password
        {
            get { return password; }
            set { password = value; }
        }
        public string Address
        {
            get { return Addr; }
            set { Addr = value; }
        }

        
    }
}