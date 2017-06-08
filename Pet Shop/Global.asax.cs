using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Pet_Shop
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            Application["UsersOnline"] = 0;
        }

        public void Session_OnStart()
        {
            Application.Lock();
            Application["UsersOnline"] = (int)Application["UsersOnline"] + 1;
            Application.UnLock();
        }             
        public void Page_Error(object sender, EventArgs e)
        {
            Exception objErr = Server.GetLastError().GetBaseException();
            string err = "<b>Error Caught in Page_Error event</b><hr><br>" +
                    "<br><b>Error in: </b>" + Request.Url.ToString() +
                    "<br><b>Error Message: </b>" + objErr.Message.ToString() +
                    "<br><b>Stack Trace:</b><br>" +
                              objErr.StackTrace.ToString();
            Response.Write(err.ToString());
            // Server.ClearError();
        }
    }
}