using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pet_Shop
{
  public partial class PetsMoving : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
			lblTime.Text = DateTime.Now.ToLongTimeString();
		}
		protected void cmdRefreshTime_Click(object sender, EventArgs e)
		{
			lblTime.Text = DateTime.Now.ToLongTimeString();
		}

		protected void submitOrder_Click(object sender, EventArgs e)
		{
			double orderNum = Convert.ToDouble(PosterQuantity.Text);
			double total = 0;
			total = 12.99 * orderNum;
			Math.Round(total, 2);
			posterTotal.Text = "Your total: $" + total;
		}
		protected void orderLeash_Click(object sender, EventArgs e)
		{
			double leashNum = Convert.ToDouble(LeashQuantity.Text);
			double leashPrice = 0;
			leashPrice = 7.99 * leashNum;
			Math.Round(leashPrice, 2);
			leashTotal.Text = "Your total: $" + leashPrice;
		}
	}
}