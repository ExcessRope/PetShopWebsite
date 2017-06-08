using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pet_Shop
{
  public partial class DBPetList : System.Web.UI.Page
  {
    private string CS = WebConfigurationManager.ConnectionStrings["PetsCS"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
      FillPetList();      
    }
    private void FillPetList()
    {
      DDLPetList.Items.Clear();
      string selectSQL = "SELECT Description, ProductID FROM Products WHERE CategoryID='1'";
      SqlConnection con = new SqlConnection(CS);
      SqlCommand cmd = new SqlCommand(selectSQL, con);
      SqlDataReader reader;
      try
      {
        con.Open();
        reader = cmd.ExecuteReader();
        while(reader.Read())
        {
          ListItem newItem = new ListItem();
          newItem.Text = reader["Description"].ToString();
          newItem.Value = reader["ProductID"].ToString();
          DDLPetList.Items.Add(newItem);
        }
        reader.Close();
      }
      catch (Exception err)
      {
        lblResults.Text = "Error reading list of names.";
        lblResults.Text += err.Message;
      }
      finally
      {
        con.Close();
      }
    }
  }
}