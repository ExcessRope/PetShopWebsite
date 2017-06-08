using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Pet_Shop
{
  /// <summary>
  /// Summary description for Pets
  /// </summary>
  [WebService(Namespace = "Pet_Shop")]
  [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
  [System.ComponentModel.ToolboxItem(false)]
  // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
  [System.Web.Script.Services.ScriptService]
  public class Pets : System.Web.Services.WebService
  {
    private string PetCS = ConfigurationManager.ConnectionStrings["PetsCS"].ConnectionString;

    [WebMethod]
    public DataSet GetPetList()
    {
      SqlConnection con = new SqlConnection(PetCS);
      string selectSQL = "SELECT Description, ProductID FROM Products WHERE CategoryID='1'";
      SqlCommand cmd = new SqlCommand(selectSQL, con);
      SqlDataAdapter adapter = new SqlDataAdapter(cmd);
      DataSet dsPets = new DataSet();
      adapter.Fill(dsPets, "Pets");
      return dsPets;
    }
  }
}
