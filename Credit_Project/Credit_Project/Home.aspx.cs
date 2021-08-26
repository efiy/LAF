using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Credit_Project
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["userName"] != null)
            //{
            //    Label1.Text = Session["userName"].ToString();
            //}
            //else
            //{
            //    Response.Redirect("Login.aspx");
            //}
            if(!IsPostBack)
            {
               // show();
            }
        }

        //protected void Timer1_Tick(object sender, EventArgs e)
        //{
        //    show();
           
        //}

        //private void show()
        //{
           
        //    Random ran = new Random();
        //    int i = ran.Next(1, 5);
        //    Image1.ImageUrl = "~/Images/" + i.ToString() + ".jpg";
        //}
    }
}