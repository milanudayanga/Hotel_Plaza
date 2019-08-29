using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityLayer
{
    public class Message
    {
       
        private string email;
        private string msg;
        private string date;
        private string type;

        private string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        public Message()
        {
           
        }


        public string Email
        {
            get { return email; }
            set { email = value; }
        }

        public string Msg
        {
            get { return msg; }
            set { msg = value; }
        }

        public string Date
        {
            get { return date; }
            set { date = value; }
        }

        public string Type
        {
            get { return type; }
            set { type = value; }
        }
    }
}
