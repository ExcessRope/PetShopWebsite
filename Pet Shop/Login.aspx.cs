using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pet_Shop
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["UserInfo"] != null)
            {
                String role = (String)Session["Role"];
                TextBox1.Text = (String)Session["Username"];
                TextBox2.Text = (String)Session["Password"];
                lastvisit.Text = (String)Session["Password"];
                cookierole.Text = (String)Session["Password"];
            }                
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((String)Session["Username"] != null)
            {
                Server.Transfer("~/Success.aspx");
            }
            if (Page.IsValid)
            {
                try
                {
                    Session["Username"] = ((TextBox)fields.FindControl("TextBox1")).Text;
                    Session["Password"] = ((TextBox)fields.FindControl("TextBox2")).Text;
                    Session["LastVisited"] = DateTime.Now;

                    if ((String)Session["Username"] == "Admin" ||
                        (String)Session["Username"] == "Bugs" ||
                        (String)Session["Username"] == "Tweety")
                    {
                        Session["Role"] = "Admin";
                    }
                    else
                    {
                        Session["Role"] = "User";
                    }

                    HttpCookie cookie = new HttpCookie("UserInfo");
                    cookie["Username"] = (String)Session["Username"];
                    cookie["Password"] = (String)Session["Password"];
                    cookie["LastVisited"] = (String)Session["LastVisited"];
                    cookie["Role"] = (String)Session["Role"];
                    Response.Cookies.Add(cookie);

                    if (cookie["Role"] == "admin" || cookie["Role"] == "user")
                    {
                        if (checkUsername() && checkPassword())
                        {
                            Server.Transfer("~/Success.aspx");
                        }
                    }
                }
                catch (Exception err)
                {
                    throw err;
                }

                
            } // end isValid                
        } // end Button1_Click

        private bool checkUsername()
        {
            if ((String)Session["Username"] == "Admin" ||
                (String)Session["Username"] == "Bugs" ||
                (String)Session["Username"] == "Tweety" ||
                (String)Session["Username"] == "Ralf" ||
                (String)Session["Username"] == "Jose" ||
                (String)Session["Username"] == "Ernest")
            {
                return true;
            }
            return false;            
        } // end checkUsername

        private bool checkPassword()
        {
            if ((String)Session["Password"] == "Password" ||
                (String)Session["Password"] == "Rainbow" ||
                (String)Session["Password"] == "ShowBoat" ||
                (String)Session["Password"] == "GreenRugs" ||
                (String)Session["Password"] == "BikeStand" ||
                (String)Session["Password"] == "TowTruck")
            {
                return true;
            }
            return false;
        } // end checkUsername
    }
}