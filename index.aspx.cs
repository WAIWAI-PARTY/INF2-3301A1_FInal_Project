using System;
using System.Collections.Generic;
using System.Web.UI.HtmlControls;
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

        protected void resetDDL(object sender, EventArgs e)
        {
            for (int i = 0; i < 10; i++)
            {
                DropDownList quantityDDL = (DropDownList)FindControl($"DropDownList{i}");
                quantityDDL.SelectedIndex = 0;
            }

        }

        protected void Add_To_Shopping_Cart(object sender, EventArgs e)
        {
            List<Item> itemList = new List<Item>();

            for (int i = 0; i < 10; i++)
            {
                int quantity = int.Parse(((DropDownList)FindControl($"DropDownList{i}")).SelectedValue);
                if (quantity <= 0)
                {
                    continue;
                }
                string productName = ((HtmlGenericControl)FindControl($"productName{i}")).InnerText;
                string priceText = ((HtmlGenericControl)FindControl($"priceText{i}")).InnerText;
                int price = int.Parse(priceText.Substring(1));
                
                Item item = new Item(productName, price, quantity);
                itemList.Add(item);
            }
            Session["itemList"] = itemList;

        }


        protected void OnDdlSelect(object sender, EventArgs e)
        {
            int total_price = 0;
            for (int i = 0; i < 10; i++)
            {
                int quantity = int.Parse(((DropDownList)FindControl($"DropDownList{i}")).SelectedValue);
                if (quantity <= 0)
                {
                    continue;
                }
                string priceText = ((HtmlGenericControl)FindControl($"priceText{i}")).InnerText;
                int price = int.Parse(priceText.Substring(1));

                int item_price = price * quantity;
                System.Web.UI.WebControls.Label l = ((System.Web.UI.WebControls.Label)FindControl($"Label{i}"));
                l.Text = $"Price: ${item_price}";
                total_price += item_price;
            }
            totalHolder.InnerText = $"Total Price: ${total_price}";
        }
    }
}