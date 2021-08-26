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
    public partial class Search : System.Web.UI.Page
    {
        //OleDbConnection cs = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\User\Desktop\Credit\LAF.mdb");
        //OleDbCommand cmd = new OleDbCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButSearch_Click(object sender, EventArgs e)
        {
            OleDbConnection cn = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Administrator\Desktop\Credit\LAF.mdb");
            cn.Open();
            string str = "select * from Savedb where (Branch like '%'+@search+'%' and LAF_No like '%'+@input+'%' and Customer_Name like '%'+@find+'%'and Analyst_Name like '%'+@go+'%')";
            OleDbCommand xp = new OleDbCommand(str,cn);

            xp.Parameters.Add("@search", OleDbType.LongVarChar).Value = DropDownList1.Text;
            xp.Parameters.Add("@input", OleDbType.LongVarChar).Value = laf_no.Text;
            xp.Parameters.Add("@find", OleDbType.LongVarChar).Value = customer.Text;
            xp.Parameters.Add("@go", OleDbType.LongVarChar).Value = DropDownList2.Text;
            xp.ExecuteNonQuery();
            OleDbDataAdapter da = new OleDbDataAdapter();
            da.SelectCommand = xp;
            DataSet ds = new DataSet();
            da.Fill(ds, "Branch");
            da.Fill(ds, "LAF_No");
            da.Fill(ds, "Customer_Name");
            da.Fill(ds, "Analyst_Name");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            cn.Close();
        
          //  string qr = " select * from Savedb where LAF_No='" + laf_no.Text + "' or Branch ='" +DropDownList1.Text + "' or Customer_Name='"+customer.Text+"'";
           
          // OleDbCommand cmd = new OleDbCommand();
          //  cmd.CommandText = qr;
          // cmd.Connection = cn;
          //cmd.Parameters.AddWithValue("Branch", DropDownList1.Text);
          //  cmd.Parameters.AddWithValue("LAF_No", laf_no.Text);
          //cmd.Parameters.AddWithValue("Customer_Name", customer.Text);      
          //  DataTable dt = new DataTable();
          //  OleDbDataAdapter da = new OleDbDataAdapter();
          //da.SelectCommand = cmd;  
          //  da.Fill(dt);
          //  GridView1.DataSource = dt;
          //  GridView1.DataBind();
          //  cn.Close();
        }
    }
}