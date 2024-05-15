using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Script.Serialization;

namespace INF2_3301A1_FInal_Project
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

            
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            string json = @"
            [
                { ""name"": ""Wireless Earbud"", ""price"": 99 ,""quantity"": 0 },
                { ""name"": ""Smartwatch"", ""price"": 199 ,""quantity"": 0 },
                { ""name"": ""Power Bank"", ""price"": 29 ,""quantity"": 0 },
                { ""name"": ""Monitor Light Bar"", ""price"": 149 ,""quantity"": 0 },
                { ""name"": ""iPad"", ""price"": 499 ,""quantity"": 0 },
                { ""name"": ""Laptop"", ""price"": 799 ,""quantity"": 0 },
                { ""name"": ""Bluetooth Speaker"", ""price"": 69 ,""quantity"": 0 },
                { ""name"": ""Smart Phone"", ""price"": 599 ,""quantity"": 0 },
                { ""name"": ""Web Camera"", ""price"": 129 ,""quantity"": 0 },
                { ""name"": ""Wireless Charging Pad"", ""price"": 39 ,""quantity"": 0 }
            ]";

            JavaScriptSerializer serializer = new JavaScriptSerializer();
            List<Item> itemList = serializer.Deserialize<List<Item>>(json);

            Session["itemList"] = itemList;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}