using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pet_Shop
{
  public partial class DBPetFoodList : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      // create pet food list
      List<string> food = new List<string>();
      food.Add("Authority");
      food.Add("AvoDerm Natural");
      food.Add("Bil-Jac");
      food.Add("Blue Buffalo");
      food.Add("Castor & Pollux");
      food.Add("Cesar");
      food.Add("Dog For Dog");
      food.Add("Eukanuba");
      food.Add("Freshpet");
      food.Add("Great Choice");
      food.Add("Hill's");
      food.Add("Iams");
      food.Add("Kibbles 'n Bits");
      food.Add("NUTRO");
      food.Add("Natural Balance");
      food.Add("Nature's");
      food.Add("Nulo");
      food.Add("Nutro");
      food.Add("Pedigree");
      food.Add("Purina");
      food.Add("Royal Canin");
      food.Add("Simply Nourish");
      food.Add("Wellness");

      // check for postback so you don't double the list data
      if (!Page.IsPostBack)
      {
        RDLPetFood.DataSource = food;
        this.DataBind();
      }
    }
  }
}