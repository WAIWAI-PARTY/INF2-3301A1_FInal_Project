<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="INF2_3301A1_FInal_Project.WebForm1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
   <head runat="server">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <title></title>
      <style>
         *{
         background-color:#1E1E1E;
         color:#FFFFFF;
         border-color:#333333;
         border:thick;
         }
        #nav{
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        background-color: #333;
        color: white;
        padding: 10px;
        text-align: center;
        z-index: 1000; /* Ensure it stays on top of other elements */
        }
                #bottom {
            position: fixed;
            bottom: 0;
            left: 0;
            width: 100%;
            background-color: #333;
            color: white;
            padding: 10px;
            text-align: center;
            z-index: 1000; /* Ensure it stays on top of other elements */
        }
         #content {
         display: flex;
         flex-wrap: wrap;
         justify-content: space-between;
         }
        .card {
            flex: 1; /* This makes all divs take equal space */
            margin: 5px;
            padding: 20px;
            background-color: #808080;
            text-align: center;
        }
         img{
         height:150px;
         width:150px;
         }
         #bottom{
         width:100%;
         padding-inline:14px;
         }
      </style>
   </head>
   <body>
      <form id="form1" runat="server">
         <div id="nav">
            <a href="" >Shopping history</a>
         </div>
         <div id="content">
         <%--Item--%>
         <div class="card" runat="server" id="Card0">
            <img src="Image/WirelessEarbuds.jpg" alt="Product Image">
            <p>Wireless Earbud</p>
            <p class="price">$99</p>
            <label for="DropDownList0">Quantity:</label>
            <asp:DropDownList ID="DropDownList0" runat="server" OnSelectedIndexChanged="OnDdlSelect" AutoPostBack="true" >
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
             <asp:Label ID="Label0" runat="server" Text="Total Price: $0"></asp:Label>
         </div>
         <%--Item--%>
         <%--Item--%>
         <div class="card" runat="server" id="Card1">
            <img src="Image/Smartwatch.jpg" alt="Product Image">
            <p>Smartwatch</p>
            <p class="price">$199</p>
            <label for="DropDownList1">Quantity:</label>
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="OnDdlSelect" AutoPostBack="true" >
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
             <asp:Label ID="Label1" runat="server" Text="Total Price: $0"></asp:Label>
         </div>
         <%--Item--%>
         <%--Item--%>
         <div class="card" runat="server" id="Card2">
            <img src="/Image/powerbank.jpg" alt="Product Image">
            <p>Power Bank</p>
            <p class="price">$29</p>
            <label for="DropDownList2">Quantity:</label>
            <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="OnDdlSelect" AutoPostBack="true" >
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
             <asp:Label ID="Label2" runat="server" Text="Total Price: $0"></asp:Label>
         </div>
         <%--Item--%>
         <%--Item--%>
         <div class="card" runat="server" id="Card3">
            <img src="Image/monlightbar.jpg" alt="Product Image">
            <p>Monitor Light Bar</p>
            <p class="price">$149</p>
            <label for="DropDownList3">Quantity:</label>
            <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="OnDdlSelect" AutoPostBack="true" >
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
             <asp:Label ID="Label3" runat="server" Text="Total Price: $0"></asp:Label>
         </div>
         <%--Item--%>
         <%--Item--%>
         <div class="card" runat="server" id="Card4">
            <img src="Image/ipad.jpeg" alt="Product Image">
            <p>iPad</p>
            <p class="price">$49</p>
            <label for="DropDownList4">Quantity:</label>
            <asp:DropDownList ID="DropDownList4" runat="server" OnSelectedIndexChanged="OnDdlSelect" AutoPostBack="true" >
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
             <asp:Label ID="Label4" runat="server" Text="Total Price: $0"></asp:Label>
         </div>
         <%--Item--%>
         <%--Item--%>
         <div class="card" runat="server" id="Card5">
            <img src="Image/laptop.jpg" alt="Product Image">
            <p>Laptop</p>
            <p class="price">$799</p>
            <label for="DropDownList5">Quantity:</label>
            <asp:DropDownList ID="DropDownList5" runat="server" OnSelectedIndexChanged="OnDdlSelect" AutoPostBack="true" >
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
             <asp:Label ID="Label5" runat="server" Text="Total Price: $0"></asp:Label>
         </div>
         <%--Item--%>
         <%--Item--%>
         <div class="card" runat="server" id="Card6">
            <img src="Image/btSpeaker.jpg" alt="Product Image">
            <p>Bluetooth Speaker</p>
            <p class="price">$69</p>
            <label for="DropDownList6">Quantity:</label>
            <asp:DropDownList ID="DropDownList6" runat="server" OnSelectedIndexChanged="OnDdlSelect" AutoPostBack="true" >
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
             <asp:Label ID="Label6" runat="server" Text="Total Price: $0"></asp:Label>
         </div>
         <%--Item--%>
         <%--Item--%>
         <div class="card" runat="server" id="Card7">
            <img src="Image/smartphone.jpg" alt="Product Image">
            <p>Smart Phone</p>
            <p class="price">$1199</p>
            <label for="DropDownList7">Quantity:</label>
            <asp:DropDownList ID="DropDownList7" runat="server" OnSelectedIndexChanged="OnDdlSelect" AutoPostBack="true" >
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
             <asp:Label ID="Label7" runat="server" Text="Total Price: $0"></asp:Label>
         </div>
         <%--Item--%>
         <%--Item--%>
         <div class="card" runat="server" id="Card8">
            <img src="Image/webcam.jpg" alt="Product Image">
            <p>Web Camera</p>
            <p class="price">$129</p>

            <label for="DropDownList8">Quantity:</label>
            <asp:DropDownList ID="DropDownList8" runat="server" OnSelectedIndexChanged="OnDdlSelect" AutoPostBack="true" >
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
            </asp:DropDownList>
             <asp:Label ID="Label8" runat="server" Text="Total Price: $0"></asp:Label>
         </div>
         <%--Item--%>
         <%--Item--%>
         <div class="card" runat="server" id="Card9">
            <img src="Image/wirelesscharger.jpg" alt="Product Image">
            <p>Wireless Charging Pad</p>
            <p class="price">$39</p>
            <label for="DropDownList9">Quantity:</label>
            <asp:DropDownList ID="DropDownList9" runat="server" OnSelectedIndexChanged="OnDdlSelect" AutoPostBack="true" >
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
             <asp:Label ID="Label9" runat="server" Text="Total Price: $0"></asp:Label>
         </div>
         <%--Item--%>
         <div id="bottom">
            <p runat="server" id="totalHolder">Total Price: $0</p>
             <asp:Button ID="AddToCartButton" runat="server" Text="Add All to Cart" OnClick="Add_To_Shopping_Cart" />
            <asp:Button runat="server" ID="btn1" Text="Show Shopping cart" OnClick="To_Shopping_Cart"></asp:Button>
         </div>
      </form>
   </body>
</html>