using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace Pet_Shop
{
  public partial class Calendar : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void MyCalendar_SelectionChanged(object sender, EventArgs e)
    {
      string dailyPet = "";
      Random rnd = new Random();
      int rndPet = rnd.Next(1, 31);

      switch (rndPet%5)
      {
        case 0:
          dailyPet = "Bugs Bunny, which was first seen in 1940.";
          break;
        case 1:
          dailyPet = "Daffy Duck, who was first seen in 1937.";
          break;
        case 2:
          dailyPet = "Porky Pig, who was first seen in 1935.";
          break;
        case 3:
          dailyPet = "Sylvester the Cat, who was first seen in 1941.";
          break;
        default:
          dailyPet = "Tweety Bird, who was first seen in 1942";
          break;
      }

      lblDates.Text = "The Warner Brothers Pet of the Day on " + MyCalendar.SelectedDate.ToLongDateString() + ", is " + dailyPet;     

    }
  }
}