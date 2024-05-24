using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INF2_3301A1_FInal_Project
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
                        priceCell.Text = item.GetItemPrice().ToString();
                        row.Cells.Add(priceCell);

                        itemTable.Rows.Add(row);
                    }
                }
            }
        }
        protected void continueShoppingButton_Click(object sender, EventArgs e)
        {
            Session["BackFromShoppingCart"] = true;
            Response.Redirect("index.aspx");
        }
    }
}