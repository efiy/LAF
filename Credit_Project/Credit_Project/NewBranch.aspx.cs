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
      
    public partial class NewBranch : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Administrator\Desktop\Credit\LAF.mdb");
       // OleDbCommand cmd = new OleDbCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] != null)
            {
                Label4.Text = Session["user"].ToString();
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
            string st = "select count(*) from Branch where Branch_Code='" + TextBox2.Text + "'";
            OleDbCommand cmd = new OleDbCommand(st, con);
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            if(count>0)
            {
                Label3.Text = "Branch code Already Exist!";
            }
            else
            {
                con.Open();
                cmd.CommandText = "Insert into Branch values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                con.Close();
                Label3.Text = "Sucessfully Registered!";
                Clear();
               
            }
            
           
            
        }
        public void Clear()
        {
            TextBox2.Text = "";
            TextBox1.Text = "";
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}