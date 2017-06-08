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
  public partial class DBManageCategoryDelete : System.Web.UI.Page
  {
    private string CS = WebConfigurationManager.ConnectionStrings["PetsCS"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
      FillCategoryList();
    }
    private void FillCategoryList()
    {
      CategoryList.Items.Clear();
      string selectSQL = "SELECT CategoryID, Name FROM Categories";
      SqlConnection con = new SqlConnection(CS);
      SqlCommand cmd = new SqlCommand(selectSQL, con);
      SqlDataReader reader;
      try
      {
        con.Open();
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
          ListItem newItem = new ListItem();
          newItem.Text = reader["Name"].ToString();
          newItem.Value = reader["CategoryID"].ToString();
          CategoryList.Items.Add(newItem);
          DDList.Items.Add(newItem);
        }
        reader.Close();
      }
      catch (Exception err)
      {
        lblResults.Text = "Error reading list of categories.";
        lblResults.Text += err.Message;
      }
      finally
      {
        con.Close();
      }
    }

    protected void DeleteButton_Click(object sender, EventArgs e)
    {
      string insertSQL = "DELETE FROM Categories WHERE CategoryID = @CategoryID";
      SqlConnection con = new SqlConnection(CS);
      SqlCommand cmd = new SqlCommand(insertSQL, con);
      cmd.Parameters.AddWithValue("@CategoryID", DDList.SelectedValue);

      int valueReturned;
      try
      {
        con.Open();
        valueReturned = cmd.ExecuteNonQuery();
        lblResults.Text = valueReturned.ToString() + " record deleted.";
      }
      catch (Exception err)
      {
        lblResults.Text = "Error getting list of categories.";
        lblResults.Text += err.Message;
      }
      finally
      {
        con.Close();
      }
      FillCategoryList();
    }
  }
}