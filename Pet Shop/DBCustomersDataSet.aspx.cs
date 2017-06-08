using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pet_Shop
{
  public partial class DBCustomersDataSet : System.Web.UI.Page
  {
    private string CS = WebConfigurationManager.ConnectionStrings["PetsCS"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
      CustomerList.Items.Clear();
      SqlConnection con = new SqlConnection(CS);
      string selectSQL = "SELECT [LastName] AS lname, [FirstName] AS fname, [CustomerID] AS custid FROM Customers";
      SqlCommand cmd = new SqlCommand(selectSQL, con);
      SqlDataAdapter adapter = new SqlDataAdapter(cmd);
      DataSet dsCustList = new DataSet();
      adapter.Fill(dsCustList, "CustomerList");
      foreach (DataRow row in dsCustList.Tables["CustomerList"].Rows)
      {
        ListItem newItem = new ListItem();
        newItem.Text = row["lname"] + ", " + row["fname"];
        newItem.Value = row["custid"].ToString();
        CustomerList.Items.Add(newItem);
      }
    }
  }
}