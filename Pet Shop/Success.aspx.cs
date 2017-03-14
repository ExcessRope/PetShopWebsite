using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pet_Shop
{
    public partial class Success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["UserInfo"] != null)
            {
                Server.Transfer("~/Login.aspx");
            }
            else
            {
                greeting.Text = "Hello, " + (String)Session["Username"] + "!";
                Label1.Text = "Your Role is " + (String)Session["Role"] + ".";
                Label2.Text = "Your Password is " + (String)Session["Password"] + ".";
                Label3.Text = "Your Last visit was " + (String)Session["LastVisited"] + ".";
            }
        }
    }
}