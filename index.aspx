<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="INF2_3301A1_FInal_Project.WebForm1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<title>Alimama</title>
		<link rel="stylesheet" href="style.css">
	</head>
	<body>
		<form id="form1" runat="server">
			<div id="nav">
				<a>Shopping</a>
				<a href="history.aspx" >History</a>
			</div>
			<div id="content">
			<%--Item--%>
			<div class="card" runat="server" id="Card0">
				<img src="Image/WirelessEarbuds.jpg" alt="Product Image">
				<p runat="server" id="productName0">Wireless Earbud</p>
				<p runat="server" id="priceText0">$99</p>
				<label for="DropDownList0">Quantity:</label>
				<asp:DropDownList class="ddl"  id="DropDownList0" runat="server" OnSelectedIndexChanged="OnDdlSelect" AutoPostBack="true" >
					<asp:ListItem Text="0" Value="0" />
					<asp:ListItem Text="1" Value="1" />
					<asp:ListItem Text="2" Value="2" />
					<asp:ListItem Text="3" Value="3" />
					<asp:ListItem Text="4" Value="4" />
					<asp:ListItem Text="5" Value="5" />
					<asp:ListItem Text="6" Value="6" />
					<asp:ListItem Text="7" Value="7" />
					<asp:ListItem Text="8" Value="8" />
					<asp:ListItem Text="9" Value="9" />
					<asp:ListItem Text="10" Value="10" />
				</asp:DropDownList><br/><br/>
				<asp:Label id="Label0" runat="server" Text="Price: $0"></asp:Label>
			</div>
			<%--Item--%>
			<%--Item--%>
			<div class="card" runat="server" id="Card1">
				<img src="Image/Smartwatch.jpg" alt="Product Image">
				<p runat="server" id="productName1">Smartwatch</p>
				<p runat="server" id="priceText1">$199</p>
				<label for="DropDownList1">Quantity:</label>
				<asp:DropDownList class="ddl"  id="DropDownList1" runat="server" OnSelectedIndexChanged="OnDdlSelect" AutoPostBack="true" >
					<asp:ListItem Text="0" Value="0" />
					<asp:ListItem Text="1" Value="1" />
					<asp:ListItem Text="2" Value="2" />
					<asp:ListItem Text="3" Value="3" />
					<asp:ListItem Text="4" Value="4" />
					<asp:ListItem Text="5" Value="5" />
					<asp:ListItem Text="6" Value="6" />
					<asp:ListItem Text="7" Value="7" />
					<asp:ListItem Text="8" Value="8" />
					<asp:ListItem Text="9" Value="9" />
					<asp:ListItem Text="10" Value="10" />
				</asp:DropDownList><br/><br/>
				<asp:Label id="Label1" runat="server" Text="Price: $0"></asp:Label>
			</div>
			<%--Item--%>
			<%--Item--%>
			<div class="card" runat="server" id="Card2">
				<img src="/Image/powerbank.jpg" alt="Product Image">
				<p runat="server" id="productName2">Power Bank</p>
				<p runat="server" id="priceText2">$29</p>
				<label for="DropDownList2">Quantity:</label>
				<asp:DropDownList class="ddl"  id="DropDownList2" runat="server" OnSelectedIndexChanged="OnDdlSelect" AutoPostBack="true" >
					<asp:ListItem Text="0" Value="0" />
					<asp:ListItem Text="1" Value="1" />
					<asp:ListItem Text="2" Value="2" />
					<asp:ListItem Text="3" Value="3" />
					<asp:ListItem Text="4" Value="4" />
					<asp:ListItem Text="5" Value="5" />
					<asp:ListItem Text="6" Value="6" />
					<asp:ListItem Text="7" Value="7" />
					<asp:ListItem Text="8" Value="8" />
					<asp:ListItem Text="9" Value="9" />
					<asp:ListItem Text="10" Value="10" />
				</asp:DropDownList><br/><br/>
				<asp:Label id="Label2" runat="server" Text="Price: $0"></asp:Label>
			</div>
			<%--Item--%>
			<%--Item--%>
			<div class="card" runat="server" id="Card3">
				<img src="Image/monlightbar.jpg" alt="Product Image">
				<p runat="server" id="productName3">Monitor Light Bar</p>
				<p runat="server" id="priceText3">$149</p>
				<label for="DropDownList3">Quantity:</label>
				<asp:DropDownList class="ddl"  id="DropDownList3" runat="server" OnSelectedIndexChanged="OnDdlSelect" AutoPostBack="true" >
					<asp:ListItem Text="0" Value="0" />
					<asp:ListItem Text="1" Value="1" />
					<asp:ListItem Text="2" Value="2" />
					<asp:ListItem Text="3" Value="3" />
					<asp:ListItem Text="4" Value="4" />
					<asp:ListItem Text="5" Value="5" />
					<asp:ListItem Text="6" Value="6" />
					<asp:ListItem Text="7" Value="7" />
					<asp:ListItem Text="8" Value="8" />
					<asp:ListItem Text="9" Value="9" />
					<asp:ListItem Text="10" Value="10" />
				</asp:DropDownList><br/><br/>
				<asp:Label id="Label3" runat="server" Text="Price: $0"></asp:Label>
			</div>
			<%--Item--%>
			<%--Item--%>
			<div class="card" runat="server" id="Card4">
				<img src="Image/ipad.jpeg" alt="Product Image">
				<p runat="server" id="productName4">iPad</p>
				<p runat="server" id="priceText4">$49</p>
				<label for="DropDownList4">Quantity:</label>
				<asp:DropDownList class="ddl"  id="DropDownList4" runat="server" OnSelectedIndexChanged="OnDdlSelect" AutoPostBack="true" >
					<asp:ListItem Text="0" Value="0" />
					<asp:ListItem Text="1" Value="1" />
					<asp:ListItem Text="2" Value="2" />
					<asp:ListItem Text="3" Value="3" />
					<asp:ListItem Text="4" Value="4" />
					<asp:ListItem Text="5" Value="5" />
					<asp:ListItem Text="6" Value="6" />
					<asp:ListItem Text="7" Value="7" />
					<asp:ListItem Text="8" Value="8" />
					<asp:ListItem Text="9" Value="9" />
					<asp:ListItem Text="10" Value="10" />
				</asp:DropDownList><br/><br/>
				<asp:Label id="Label4" runat="server" Text="Price: $0"></asp:Label>
			</div>
			<%--Item--%>
			<%--Item--%>
			<div class="card" runat="server" id="Card5">
				<img src="Image/laptop.jpg" alt="Product Image">
				<p runat="server" id="productName5">Laptop</p>
				<p runat="server" id="priceText5">$799</p>
				<label for="DropDownList5">Quantity:</label>
				<asp:DropDownList class="ddl"  id="DropDownList5" runat="server" OnSelectedIndexChanged="OnDdlSelect" AutoPostBack="true" >
					<asp:ListItem Text="0" Value="0" />
					<asp:ListItem Text="1" Value="1" />
					<asp:ListItem Text="2" Value="2" />
					<asp:ListItem Text="3" Value="3" />
					<asp:ListItem Text="4" Value="4" />
					<asp:ListItem Text="5" Value="5" />
					<asp:ListItem Text="6" Value="6" />
					<asp:ListItem Text="7" Value="7" />
					<asp:ListItem Text="8" Value="8" />
					<asp:ListItem Text="9" Value="9" />
					<asp:ListItem Text="10" Value="10" />
				</asp:DropDownList><br/><br/>
				<asp:Label id="Label5" runat="server" Text="Price: $0"></asp:Label>
			</div>
			<%--Item--%>
			<%--Item--%>
			<div class="card" runat="server" id="Card6">
				<img src="Image/btSpeaker.jpg" alt="Product Image">
				<p runat="server" id="productName6">Bluetooth Speaker</p>
				<p runat="server" id="priceText6">$69</p>
				<label for="DropDownList6">Quantity:</label>
				<asp:DropDownList class="ddl"  id="DropDownList6" runat="server" OnSelectedIndexChanged="OnDdlSelect" AutoPostBack="true" >
					<asp:ListItem Text="0" Value="0" />
					<asp:ListItem Text="1" Value="1" />
					<asp:ListItem Text="2" Value="2" />
					<asp:ListItem Text="3" Value="3" />
					<asp:ListItem Text="4" Value="4" />
					<asp:ListItem Text="5" Value="5" />
					<asp:ListItem Text="6" Value="6" />
					<asp:ListItem Text="7" Value="7" />
					<asp:ListItem Text="8" Value="8" />
					<asp:ListItem Text="9" Value="9" />
					<asp:ListItem Text="10" Value="10" />
				</asp:DropDownList><br/><br/>
				<asp:Label id="Label6" runat="server" Text="Price: $0"></asp:Label>
			</div>
			<%--Item--%>
			<%--Item--%>
			<div class="card" runat="server" id="Card7">
				<img src="Image/smartphone.jpg" alt="Product Image">
				<p runat="server" id="productName7">Smart Phone</p>
				<p runat="server" id="priceText7">$1199</p>
				<label for="DropDownList7">Quantity:</label>
				<asp:DropDownList class="ddl"  id="DropDownList7" runat="server" OnSelectedIndexChanged="OnDdlSelect" AutoPostBack="true" >
					<asp:ListItem Text="0" Value="0" />
					<asp:ListItem Text="1" Value="1" />
					<asp:ListItem Text="2" Value="2" />
					<asp:ListItem Text="3" Value="3" />
					<asp:ListItem Text="4" Value="4" />
					<asp:ListItem Text="5" Value="5" />
					<asp:ListItem Text="6" Value="6" />
					<asp:ListItem Text="7" Value="7" />
					<asp:ListItem Text="8" Value="8" />
					<asp:ListItem Text="9" Value="9" />
					<asp:ListItem Text="10" Value="10" />
				</asp:DropDownList><br/><br/>
				<asp:Label id="Label7" runat="server" Text="Price: $0"></asp:Label>
			</div>
			<%--Item--%>
			<%--Item--%>
			<div class="card" runat="server" id="Card8">
				<img src="Image/webcam.jpg" alt="Product Image">
				<p runat="server" id="productName8">Web Camera</p>
				<p runat="server" id="priceText8">$129</p>
				<label for="DropDownList8">Quantity:</label>
				<asp:DropDownList class="ddl"  id="DropDownList8" runat="server" OnSelectedIndexChanged="OnDdlSelect" AutoPostBack="true" >
					<asp:ListItem Text="0" Value="0" />
					<asp:ListItem Text="1" Value="1" />
					<asp:ListItem Text="2" Value=2 />
					<asp:ListItem Text="3" Value="3" />
					<asp:ListItem Text="4" Value="4" />
					<asp:ListItem Text="5" Value="5" />
					<asp:ListItem Text="6" Value="6" />
					<asp:ListItem Text="7" Value="7" />
					<asp:ListItem Text="8" Value="8" />
					<asp:ListItem Text="9" Value="9" />
					<asp:ListItem Text="10" Value="10" />
				</asp:DropDownList><br/><br/>

				<asp:Label id="Label8" runat="server" Text="Price: $0"></asp:Label>
			</div>
			<%--Item--%>
			<%--Item--%>
			<div class="card" runat="server" id="Card9">
				<img src="Image/wirelesscharger.jpg" alt="Product Image">
				<p runat="server" id="productName9">Wireless Charging Pad</p>
				<p runat="server" id="priceText9">$39</p>
				<label for="DropDownList9">Quantity:</label>
				<asp:DropDownList class="ddl"  id="DropDownList9" runat="server" OnSelectedIndexChanged="OnDdlSelect" AutoPostBack="true" >
					<asp:ListItem Text="0" Value="0" />
					<asp:ListItem Text="1" Value="1" />
					<asp:ListItem Text="2" Value="2" />
					<asp:ListItem Text="3" Value="3" />
					<asp:ListItem Text="4" Value="4" />
					<asp:ListItem Text="5" Value="5" />
					<asp:ListItem Text="6" Value="6" />
					<asp:ListItem Text="7" Value="7" />
					<asp:ListItem Text="8" Value="8" />
					<asp:ListItem Text="9" Value="9" />
					<asp:ListItem Text="10" Value="10" />
				</asp:DropDownList>
				<br/><br/>
				<asp:Label id="Label9" runat="server" Text="Price: $0"></asp:Label>
			</div>
			<%--Item--%>
			<div id="bottom">
				<p runat="server" id="totalHolder">Total Price: $0</p>
		        <asp:Button class="AspButton"  ID="ClearAll" runat="server" Text="清除" OnClick="resetDDL" />
				<asp:Button class="AspButton"  ID="AddToCartButton" runat="server" Text="加入購物車" OnClick="Add_To_Shopping_Cart" />
				<asp:Button class="AspButton"  runat="server" ID="btn1" Text="檢視購物車" OnClick="To_Shopping_Cart" />
			</div>
		</form>
	</body>
</html>