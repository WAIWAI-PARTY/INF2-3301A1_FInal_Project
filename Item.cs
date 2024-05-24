using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace INF2_3301A1_FInal_Project
{
    public class Item
    {
        public string name;
        public int price;
        public int quantity;
        public Item()
        {
        }
        public Item(string name, int price, int quantity)
        {
            this.name = name;
            this.price = price;
            this.quantity = quantity;
        }
        public int GetItemPrice()
        {
            return price*quantity;
        }
    }
}