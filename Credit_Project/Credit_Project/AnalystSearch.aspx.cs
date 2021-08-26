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
    public partial class AnalystSearch : System.Web.UI.Page
    {
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
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection cn = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Administrator\Desktop\Credit\LAF.mdb");
            cn.Open();
            OleDbCommand cmd = new OleDbCommand();
            string qr = " select * from Savedb where Analyst_Name='" + DropDownList1.Text + "'";
            cmd.CommandText = qr;
            cmd.Connection = cn;
            cmd.Parameters.AddWithValue("Analyst_Name", DropDownList1.Text);
           
            DataTable dt = new DataTable();
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            Label3.Text = "" + (GridView1.DataSource as DataTable).Rows.Count;
           
        }
    }
}