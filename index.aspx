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
        #content {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .card {
            width: 45%; /* Each card occupies 48% to accommodate for margins */
            margin-left:2%;
            margin-right:2%;
            margin-bottom:10px;/* Adjust margin between cards as needed */
            /* Add any additional styling for the cards */
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
            <div class="card">
                <table class="tg">
                    <tr>
                        <td>
                            <img src="Image/WirelessEarbuds.jpg" alt="Product Image">
                        </td>
                        <td>
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
                        </td>
                    </tr>
                </table>
            </div>
            <%--Item--%>

            <%--Item--%>
            <div class="card">
                <table class="tg">
                    <tr>
                        <td>
                            <img src="Image/Smartwatch.jpg" alt="Product Image">
                        </td>
                        <td>
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
                        </td>
                    </tr>
                </table>
            </div>
            <%--Item--%>

            <%--Item--%>
            <div class="card">
                <table class="tg">
                    <tr>
                        <td>
                            <img src="/Image/powerbank.jpg" alt="Product Image">
                        </td>
                        <td>
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
                        </td>
                    </tr>
                </table>
            </div>
            <%--Item--%>

            <%--Item--%>
            <div class="card">
                <table class="tg">
                    <tr>
                        <td>
                            <img src="Image/monlightbar.jpg" alt="Product Image">
                        </td>
                        <td>
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
                        </td>
                    </tr>
                </table>
            </div>
            <%--Item--%>

            <%--Item--%>
            <div class="card">
                <table class="tg">
                    <tr>
                        <td>
                            <img src="Image/ipad.jpeg" alt="Product Image">
                        </td>
                        <td>
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
                        </td>
                    </tr>
                </table>
            </div>
            <%--Item--%>

            <%--Item--%>
            <div class="card">
                <table class="tg">
                    <tr>
                        <td>
                            <img src="Image/laptop.jpg" alt="Product Image">
                        </td>
                        <td>
                            <p>Laptop</p>
                            <p class="price">$79</p>
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
                        </td>
                    </tr>
                </table>
            </div>
            <%--Item--%>

            <%--Item--%>
            <div class="card">
                <table class="tg">
                    <tr>
                        <td>
                            <img src="Image/btSpeaker.jpg" alt="Product Image">
                        </td>
                        <td>
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
                        </td>
                    </tr>
                </table>
            </div>
            <%--Item--%>

            <%--Item--%>
            <div class="card">
                <table class="tg">
                    <tr>
                        <td>
                            <img src="Image/smartphone.jpg" alt="Product Image">
                        </td>
                        <td>
                            <p>Smart Phone</p>
                            <p class="price">$19</p>
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
                        </td>
                    </tr>
                </table>
            </div>
            <%--Item--%>

            <%--Item--%>
            <div class="card">
                <table class="tg">
                    <tr>
                        <td>
                            <img src="Image/webcam.jpg" alt="Product Image">
                        </td>
                        <td>
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
                        </td>
                    </tr>
                </table>
            </div>
            <%--Item--%>

            <%--Item--%>
            <div class="card">
                <table class="tg">
                    <tr>
                        <td>
                            <img src="Image/wirelesscharger.jpg" alt="Product Image">
                        </td>
                        <td>
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
                        </td>
                    </tr>
                </table>
            </div>
            <%--Item--%>
        <div id="bottom">
            <p runat="server" id="totalHolder">Total Price: $0</p>
            <asp:Button runat="server" ID="btn1" Text="Shopping cart" OnClick="To_Shopping_Cart"></asp:Button>
        </div>
    </form>
</body>
</html>
