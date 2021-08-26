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
    public partial class Registration : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Administrator\Desktop\Credit\LAF.mdb");
        OleDbCommand cmd = new OleDbCommand();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Context.User.Identity.IsAuthenticated)
            {

            }
            else
            {
                Session.Clear();
                Response.Redirect("~/Login.aspx");
            }
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnregister_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd.CommandText = "Insert into credit values('" + txtusername.Text + "','" + txtpassword.Text + "')";
            cmd.Connection = con;

            cmd.ExecuteNonQuery();
            con.Close();
            Label5.Text = "Sucessfully Registered!";

        }

    }
}