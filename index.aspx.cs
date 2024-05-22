using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INF2_3301A1_FInal_Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void To_Shopping_Cart(object sender, EventArgs e)
        {
            Response.Redirect("/cart.aspx");
        }
        public void OnDdlSelect(object sender, EventArgs e)
        {
            DropDownList ddl = (DropDownList)sender;
            string ddlId = ddl.ID;
            char lastDigitChar = ddlId[ddlId.Length - 1];
            int itemId = int.Parse(lastDigitChar.ToString());

            var tempItemList = (List<Item>)Session["itemList"];

            tempItemList[itemId].quantity = int.Parse(ddl.SelectedValue);

            int totalPrice = 0;
            for (int i = 0; i < tempItemList.Count; i++)
            {
                int subtotal = tempItemList[i].price * tempItemList[i].quantity;
                totalPrice += subtotal;
            }
            totalHolder.InnerText = "Total Price: $" + totalPrice;

        }
    }
}