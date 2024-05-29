<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="INF2_3301A1_FInal_Project.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="itemTable" runat="server">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Price</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Quantity</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Total</asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
            <div id="bottom">
                <asp:button class="AspButton" ID="continueShoppingButton" runat="server" Text="Continue Shopping" OnClick="continueShoppingButton_Click" />
                <asp:Button class="AspButton" ID="btnSubmitOrder" runat="server" Text="Submit Order" OnClick="btnSubmitOrder_Click" />
			</div>
        </div>
    </form>
</body>
</html>
