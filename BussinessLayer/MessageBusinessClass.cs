using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using EntityLayer;
using DataAccessLayer;

namespace BusinessLayer
{
    public class MessageBusinessClass
    {
        public static void InsertUserMsg(string type,String mail,string date,string msg,string name)
        {
            Message mymsg = new Message();
    
            mymsg.Email = mail;
            mymsg.Msg = msg;
            mymsg.Type =type;
            mymsg.Date = date;
            mymsg.Name = name;

            MessageDAClass.AddUserMsg(mymsg);

        }

        public static List<Message> ViewUserSentMessage()
        {
            return MessageDAClass.viewUserMsg();

        }

      
        public static List<Message> ViewAdminInboxMessage(string type)
        {
            Message admesg = new Message();
            admesg.Type = type;
            return MessageDAClass.viewAdmininboxMsg(admesg);

        }

        public static void InsertAdminMsg(string type, string email, string date, string msg)
        {
            Message mymsg = new Message();

            mymsg.Type = type;
            mymsg.Email= email;
            mymsg.Msg = msg;
            mymsg.Date = date;

            MessageDAClass.AddAdminMsg(mymsg);


        }

        public static List<Message> ViewAdminSentMessage(string type)
        {
            Message admesg = new Message();
            admesg.Type = type;
            return MessageDAClass.viewAdminSentMsg(admesg);

        }

        public static List<Message> ViewuserInboxMessage(Message usermsg)
        {
            
            return MessageDAClass.viewUserinboxMsg(usermsg);
        }

        public static List<Message> UserSentMessage(string type, string email)
        {
            Message usermsg = new Message();
            usermsg.Type = type;
            usermsg.Email = email;
            return MessageDAClass.viewUserSentMsg(usermsg); 
        }

        public static void DeleteUserSentMsg(Message msg)
        {
            MessageDAClass.deleteU_SentMsg(msg);
        }

        public static void DeleteAdminInboxMsg(Message mymsg)
        {
            MessageDAClass.deleteAdminInboxMsg(mymsg);
        }

        public static void DeleteAdminSxMsg(Message mymsg)
        {
            MessageDAClass.deleteAdminSMsg(mymsg);
        }
    }
}
