using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INF2_3301A1_FInal_Project
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        int total_price = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            total_price = 0;
            if (!IsPostBack)
            {
                // 取得 Session 中的物件清單
                List<Item> itemList = Session["itemList"] as List<Item>;

                if (itemList != null)
                {
                    // 建立表格的每一列，顯示物件的名稱和 GetItemPrice() 的結果
                    foreach (Item item in itemList)
                    {
                        TableRow row = new TableRow();

                        TableCell nameCell = new TableCell();
                        nameCell.Text = item.name;
                        row.Cells.Add(nameCell);

                        TableCell priceCell = new TableCell();
                        priceCell.Text = item.price.ToString();
                        row.Cells.Add(priceCell);

                        TableCell quantityCell = new TableCell();
                        quantityCell.Text = item.quantity.ToString();
                        row.Cells.Add(quantityCell);

                        TableCell totalCell = new TableCell();
                        totalCell.Text = item.GetItemPrice().ToString();
                        row.Cells.Add(totalCell);

                        itemTable.Rows.Add(row);

                        total_price += item.GetItemPrice();
                    }
                    TableRow totalRow = new TableRow();
                    TableCell allTotalText = new TableCell();
                    allTotalText.Text = "Total:";
                    totalRow.Cells.Add(allTotalText);

                    TableCell allTotalCell = new TableCell();
                    allTotalCell.Text = "US$ "+ total_price.ToString();
                    totalRow.Cells.Add(allTotalCell);

                    itemTable.Rows.Add(totalRow);
                }
            }
        }
        protected void continueShoppingButton_Click(object sender, EventArgs e)
        {
            Session["BackFromShoppingCart"] = true;
            Response.Redirect("index.aspx");
        }

        protected void btnSubmitOrder_Click(object sender, EventArgs e)
        {
            List<Order> orderList = new List<Order>();
            HttpCookie cookie_get = Request.Cookies["orderList"];
            if (cookie_get != null)
            {
                // Deserialize the cookie value into a list of Order objects
                JavaScriptSerializer serializer = new JavaScriptSerializer();
                orderList = serializer.Deserialize<List<Order>>(cookie_get.Value);

                // Now you have the orderList from the cookie
            }
            if (orderList == null)
            {
                orderList = new List<Order>();
            }

            // Assuming you create an Order object with the required values
            List<Item> itemList = Session["itemList"] as List<Item>;
            if (itemList != null)
            {
                int total = 0;
                foreach (Item item in itemList)
                {
                    total += item.GetItemPrice();
                }

                Order newOrder = new Order(orderList.Count + 1, DateTime.Now, itemList, total);
                orderList.Add(newOrder);

                JavaScriptSerializer serializer = new JavaScriptSerializer();
                string orderListJson = serializer.Serialize(orderList);
                HttpCookie cookie = new HttpCookie("orderList", orderListJson);
                cookie.Expires = DateTime.Now.AddDays(30); // Cookie expires in 30 days
                Response.Cookies.Add(cookie);
            }

            Response.Redirect("history.aspx");
        }
    }
}