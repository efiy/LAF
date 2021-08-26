using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Text;

namespace Credit_Project
{
    public partial class Control : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button2.Visible = false;
            if (Session["user"] != null)
            {
                Label1.Text = Session["user"].ToString();
            }
            else
            {
                Response.Redirect("Admin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            OleDbConnection cn = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Administrator\Desktop\Credit\LAF.mdb");
            // OleDbConnection cn=new OleDbConnection (Session["cs"].ToString());
            cn.Open();

            string qr = " select * from Savedb where LAF_No ='" + laf.Text + "'";
            OleDbCommand cmd = new OleDbCommand(qr, cn);
            OleDbDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {

                bool recordfound = dr.Read();
                Label13.Text = "Record Exist";
                StResult.Visible = true;
                Button2.Visible = true;
                Label14.Text = dr["LAF_No"].ToString();
                DropDownList1.Text = dr["Individual/Non"].ToString();
                code.Text = dr["Branch_code"].ToString();
                TextBox1.Text = dr["Amount"].ToString();
                dat.Text = dr["C_Date"].ToString();
                customer.Text = dr["Customer_Name"].ToString();
                DropDownList3.Text = dr["Loan_Type"].ToString();
                DropDownList4.Text = dr["For_Loan_Only"].ToString();
                DropDownList5.Text = dr["Analyst_Name"].ToString();
                DropDownList2.Text = dr["Branch"].ToString();
                cn.Close();
            }

            else
            {
                
                StResult.Visible = false;
                Label13.Text = "NO Record is Found";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            OleDbConnection cn = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Administrator\Desktop\Credit\LAF.mdb");
            // OleDbConnection cn=new OleDbConnection (Session["cs"].ToString());
            cn.Open();
            string qr = " update Savedb set [Individual/Non]= '" + DropDownList1.Text + "',[Branch_Code]= '" + code.Text + "',[LAF_No]='" + Label14.Text + "',[C_Date]= '" + dat.Text + "',[Customer_Name]= '" + customer.Text + "',[Loan_Type]= '" + DropDownList3.Text + "',[For_Loan_Only]= '" + DropDownList4.Text + "',[Analyst_Name]= '" + DropDownList5.Text + "',[Branch]= '" + DropDownList2.Text + "',[Amount]='"+TextBox1.Text+"' where [LAF_No]= '" + Label14.Text + "'";
            OleDbCommand cmd = new OleDbCommand(qr, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            remove();
            Label13.Text = "Updated Successfully";
        }
        public void remove()
        {
            DropDownList1.Text = "";
            DropDownList1.Text = "";
            DropDownList1.Text = "";
            DropDownList1.Text = "";
            DropDownList1.Text = "";
            TextBox1.Text = "";
            code.Text = "";

            dat.Text = "";

            customer.Text = "";




        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Administrator\Desktop\Credit\LAF.mdb");

            con.Open();
            Button2.Visible = true;
            string chk = "select * from Branch where Branch_Name ='" + DropDownList2.Text + "'";
            OleDbCommand cmd = new OleDbCommand(chk, con);
            OleDbDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                bool found = dr.Read();

                code.Text = dr["Branch_Code"].ToString();
                Button2.Visible = true;
            }
           
        }
    }
}