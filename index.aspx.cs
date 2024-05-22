using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
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

        protected void Add_To_Shopping_Cart(object sender, EventArgs e)
        {
            List<Item> itemList = new List<Item>();

            for (int i = 0; i < 10; i++)
            {
                //string productName = ((HtmlGenericControl)FindControl($"Card{i}")).Controls[1].InnerText;
                string priceText = ((HtmlGenericControl)FindControl($"Card{i}").Controls[2]).InnerText;
                int price = int.Parse(priceText.Substring(1));
                int quantity = int.Parse(((DropDownList)FindControl($"DropDownList{i}")).SelectedValue);
                //Item item = new Item(productName, price, quantity);
                //itemList.Add(item);
            }
            Session["itemList"] = itemList;

        }


        protected void OnDdlSelect(object sender, EventArgs e)
        {
            // Determine which DropDownList triggered the event
            DropDownList ddl = sender as DropDownList;

            if (ddl != null)
            {
                int quantity = int.Parse(ddl.SelectedValue);
                int price = 0;
                System.Web.UI.WebControls.Label priceLabel = null;

                switch (ddl.ID)
                {
                    case "DropDownList0":
                        price = 99;
                        priceLabel = Label0;
                        break;
                    case "DropDownList1":
                        price = 199;
                        priceLabel = Label1;
                        break;
                    case "DropDownList2":
                        price = 29;
                        priceLabel = Label2;
                        break;
                    case "DropDownList3":
                        price = 149;
                        priceLabel = Label3;
                        break;
                    case "DropDownList4":
                        price = 49;
                        priceLabel = Label4;
                        break;
                    case "DropDownList5":
                        price = 799;
                        priceLabel = Label5;
                        break;
                    case "DropDownList6":
                        price = 69;
                        priceLabel = Label6;
                        break;
                    case "DropDownList7":
                        price = 1199;
                        priceLabel = Label7;
                        break;
                    case "DropDownList8":
                        price = 129;
                        priceLabel = Label8;
                        break;
                    case "DropDownList9":
                        price = 39;
                        priceLabel = Label9;
                        break;
                }

                if (priceLabel != null)
                {
                    int totalPrice = price * quantity;
                    priceLabel.Text = $"Total Price: ${totalPrice}";
                }
            }
        }
    }
}