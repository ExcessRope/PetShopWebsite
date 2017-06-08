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
  public partial class DBManageCategoryInsert : System.Web.UI.Page
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

    protected void InsertButton_Click(object sender, EventArgs e)
    {
      CategoryList.Items.Clear();
      string insertSQL = "INSERT INTO Categories (Name)" + "Values (@Name)";
      SqlConnection con = new SqlConnection(CS);
      SqlCommand cmd = new SqlCommand(insertSQL, con);
      cmd.Parameters.AddWithValue("@Name", TextBox1.Text);

      int valueReturned;
      try
      {
        con.Open();
        valueReturned = cmd.ExecuteNonQuery();
        lblResults.Text = valueReturned.ToString() + " record inserted.";
      }
      catch (Exception err)
      {
        lblResults.Text = "Error updating list of categories.";
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