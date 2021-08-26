using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
namespace Credit_Project
{
    public partial class Admin : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Administrator\Desktop\Credit\LAF.mdb");
        OleDbCommand cmd = new OleDbCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
         
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.Now.AddDays(-1));
            Response.Cache.SetNoStore();
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {

            string chk = "select count(*) from [Admin] where username ='" + txtusername.Text + "' and password='" + txtpassword.Text + "'";
            OleDbCommand cmd = new OleDbCommand(chk, con);
            con.Open();
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                Session["user"] = txtusername.Text;
                Response.Redirect("AdminHome.aspx");

            }
            else
            {
                Label3.Text = "INVALID ADMIN NAME OR PASSWORD";
            }

        }
    }
}