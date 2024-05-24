using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace INF2_3301A1_FInal_Project
{
    public class Order
    {
        public int Id;
        public DateTime dt;
        public List<Item> items;
        public int total;
        public Order()
        {
        }
        public Order(int Id, DateTime dt, List<Item> items, int total)
        {
            this.Id = Id;
            this.dt = dt;
            this.items = items;
            this.total = total;
        }
    }
}