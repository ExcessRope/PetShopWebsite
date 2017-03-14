using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Pet_Shop.GetPetList;

namespace Pet_Shop
{
  public partial class GetPetsWS : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      PetList.Items.Clear();
      var list = GetPetList();
      foreach (DataRow row in list.Tables["Pets"].Rows)
      {
        ListItem newItem = new ListItem();
        newItem.Text = row["description"].ToString();
        newItem.Value = row["productID"].ToString();
        PetList.Items.Add(newItem);
      }

    }
  }
}