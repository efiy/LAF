using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Data.OleDb;
using System.Data;
using System.Diagnostics;
namespace Credit_Project
{
  
    public class Global : System.Web.HttpApplication
    {
       
        protected void Application_Start(object sender, EventArgs e)
        {
           
        }

        protected void Session_Start(object sender, EventArgs e)
        {
          //  Session["cs"] = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\User\Desktop\Credit\LAF.mdb");
           
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
           /* string file = HttpContext.Current.Request.Path;
            if (!file.EndsWith("Login.aspx"))
            {
                string cookie = FormsAuthentication.FormsCookieName;
                HttpCookie autcook = Context.Request.Cookies[cookie];
                if (null == autcook)
                {
                    Response.Redirect("/Login.aspx", true);
                    Response.End();
                    return;
                }
            } */
        }

        protected void Application_Error(object sender, EventArgs e)
        {
            Exception objErr = Server.GetLastError().GetBaseException();
            string err = "Error Caught in Application_Error event\n" +
            "Error in: " + Request.Url.ToString() +
            "\nError Message:" + objErr.Message.ToString() +
            "\nStack Trace:" + objErr.StackTrace.ToString();
            EventLog.WriteEntry("Sample_WebApp", err, EventLogEntryType.Error);
            Server.ClearError();
        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}