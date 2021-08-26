using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Configuration;
namespace Credit_Project
{
    public partial class Analyst : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Administrator\Desktop\Credit\LAF.mdb");
        OleDbCommand cmd = new OleDbCommand();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] != null)
            {
                Label2.Text = Session["user"].ToString();
            }
            else
            {
                Response.Redirect("Admin.aspx");
            }
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd.CommandText = "Insert into Analyst values('" + TextBox1.Text + "')";
            cmd.Connection = con;

            cmd.ExecuteNonQuery();
            con.Close();
            Label3.Text = "Sucessfully Added New Analyst Name!";
            TextBox1.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();

            string qr = "delete from Analyst where Analyst_Name='" + TextBox1.Text + "'";
            OleDbCommand cmd = new OleDbCommand(qr, con);
            cmd.ExecuteNonQuery();
            // cmd.CommandText = "Delete from Savedb whare LAF_No='" + delet.Text + "'";
            //cmd.Connection = con;
            TextBox1.Text = "";
            Label3.Text = "Analyst Name Deleted";
            con.Close();

        }
    }
}