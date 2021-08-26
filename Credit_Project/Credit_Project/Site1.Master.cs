using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Configuration;
namespace Credit_Project
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] != null)
            {
                Label1.Text = Session["userName"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

        }
      
        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            Session.Clear();
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }
    }
}