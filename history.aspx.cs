using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INF2_3301A1_FInal_Project
{
    public partial class history : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HttpCookie cookie = Request.Cookies["orderList"];
                if (cookie != null)
                {
                    JavaScriptSerializer serializer = new JavaScriptSerializer();
                    List<Order> orderList = serializer.Deserialize<List<Order>>(cookie.Value);

                    foreach (Order order in orderList)
                    {
                        TableRow idRow = new TableRow();
                        TableRow dateRow = new TableRow();

                        Table orderTable = new Table();
                        TableRow headerRow = new TableRow();

                        TableCell idHeader = new TableCell { Text = "Order ID" };
                        idRow.Cells.Add(idHeader);

                        TableCell dateHeader = new TableCell { Text = "Date" };
                        dateRow.Cells.Add(dateHeader);

                        TableCell idCell = new TableCell { Text = order.Id.ToString() };
                        idRow.Cells.Add(idCell);

                        TableCell dateCell = new TableCell { Text = order.dt.ToString() };
                        dateRow.Cells.Add(dateCell);



                        TableCell nameHeader = new TableCell { Text = "Item Name" };
                        headerRow.Cells.Add(nameHeader);

                        TableCell priceHeader = new TableCell { Text = "Item Price" };
                        headerRow.Cells.Add(priceHeader);

                        TableCell quantityHeader = new TableCell { Text = "Item Quantity" };
                        headerRow.Cells.Add(quantityHeader);

                        TableCell itemTotalHeader = new TableCell { Text = "Total Price" };
                        headerRow.Cells.Add(itemTotalHeader);


                        orderTable.Rows.Add(idRow);
                        orderTable.Rows.Add(dateRow);
                        orderTable.Rows.Add(headerRow);

                        foreach (Item item in order.items)
                        {
                            TableRow row = new TableRow();

                            TableCell nameCell = new TableCell { Text = item.name };
                            row.Cells.Add(nameCell);

                            TableCell priceCell = new TableCell { Text = item.price.ToString() };
                            row.Cells.Add(priceCell);

                            TableCell quantityCell = new TableCell { Text = item.quantity.ToString() };
                            row.Cells.Add(quantityCell);

                            TableCell itemTotalCell = new TableCell { Text = item.GetItemPrice().ToString() };
                            row.Cells.Add(itemTotalCell);

                            orderTable.Rows.Add(row);
                        }

                        TableRow totalRow = new TableRow();
                        TableCell totalTextCell = new TableCell { Text = "Order Total:", ColumnSpan = 5 };
                        totalRow.Cells.Add(totalTextCell);

                        TableCell totalValueCell = new TableCell { Text = "USD: " + order.total.ToString() };
                        totalRow.Cells.Add(totalValueCell);

                        orderTable.Rows.Add(totalRow);

                        orderTables.Controls.Add(orderTable);
                        orderTables.Controls.Add(new Literal { Text = "<br />" }); // Add some spacing between tables
                    }
                }
            }
        }
    }
}