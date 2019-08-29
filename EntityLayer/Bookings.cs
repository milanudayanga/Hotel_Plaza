using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityLayer
{
    public class Bookings
    {
        private string email;
        private string name;
        private string surname;
        private string phone;
        private string checkin1;
        private string checkout1;
        private double total;
        private string transport;
        private int transPrice;

        public int TransPrice
        {
            get { return transPrice; }
            set { transPrice = value; }
        }

        public string Transport
        {
            get { return transport; }
            set { transport = value; }
        }

        public double Total
        {
            get { return total; }
            set { total = value; }
        }

        private int mem;
        private int night;
        private string roomType;
        private int Norooms;
        private string food;
        private int foodPrice;

        public int FoodPrice
        {
            get { return foodPrice; }
            set { foodPrice = value; }
        }

     

        public string Food
        {
            get { return food; }
            set { food = value; }
        }

        public int Norooms1
        {
            get { return Norooms; }
            set { Norooms = value; }
        }

      


        public string RoomType
        {
            get { return roomType; }
            set { roomType = value; }
        }

        public Bookings()
        {

        }

      
        public string Name
        {
            get { return name; }
            set { name = value; }
        }


        public string Email
        {
            get { return email; }
            set { email = value; }
        }
   

        public string Surname
        {
            get { return surname; }
            set { surname = value; }
        }
    

        public string Phone
        {
            get { return phone; }
            set { phone = value; }
        }
      

        public string Checkin1
        {
            get { return checkin1; }
            set { checkin1 = value; }
        }
      

        public string Checkout1
        {
            get { return checkout1; }
            set { checkout1 = value; }
        }
      

     

        public int Mem
        {
            get { return mem; }
            set { mem = value; }
        }
       
        public int Night
        {
            get { return night; }
            set { night = value; }
        }

       
       

    }
}
