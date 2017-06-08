using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pet_Shop
{
  public partial class Site : System.Web.UI.MasterPage
  {
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            int numUsers = (int)Application["UsersOnline"];
            UserCount.Text = numUsers.ToString();
        }
    }
  }
}