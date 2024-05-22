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
            if ((bool)Session["BackFromShoppingCart"])
            {
                Session["BackFromShoppingCart"] = false;
                // Retrieve the list of items from the session
                List<Item> items = Session["itemList"] as List<Item>;

                if (items != null)
                {
                    // Loop through each item and set the corresponding DropDownList value
                    foreach (var item in items)
                    {
                        switch (item.name)
                        {
                            case "Wireless Earbud":
                                DropDownList0.SelectedValue = item.quantity.ToString();
                                break;
                            case "Smartwatch":
                                DropDownList1.SelectedValue = item.quantity.ToString();
                                break;
                            case "Power Bank":
                                DropDownList2.SelectedValue = item.quantity.ToString();
                                break;
                            case "Monitor Light Bar":
                                DropDownList3.SelectedValue = item.quantity.ToString();
                                break;
                            case "iPad":
                                DropDownList4.SelectedValue = item.quantity.ToString();
                                break;
                            case "Laptop":
                                DropDownList5.SelectedValue = item.quantity.ToString();
                                break;
                            case "Bluetooth Speaker":
                                DropDownList6.SelectedValue = item.quantity.ToString();
                                break;
                            case "Smart Phone":
                                DropDownList7.SelectedValue = item.quantity.ToString();
                                break;
                            case "Web Camera":
                                DropDownList8.SelectedValue = item.quantity.ToString();
                                break;
                            case "Wireless Charging Pad":
                                DropDownList9.SelectedValue = item.quantity.ToString();
                                break;
                        }
                    }
                }
            }
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