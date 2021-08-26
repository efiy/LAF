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
    public partial class save : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Administrator\Desktop\Credit\LAF.mdb");
        OleDbCommand cmd = new OleDbCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            ImageButton2.Visible = false;
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                GenerateAutoID();
            }
        }
        private void GenerateAutoID()
        {
            //string emp="00000";
            con.Open();
            double a = 1;
            OleDbCommand cmd = new OleDbCommand("Select Count(LAF_No) from Savedb", con);
             a = Convert.ToDouble(cmd.ExecuteScalar());
           // double i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            a=a+1;
             laf.Text = a.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string st = "select count(*) from Savedb where LAF_No='" + laf.Text + "'";
            OleDbCommand cmd = new OleDbCommand(st, con);
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            if (count > 0)
            {
               
                Label2.Text = "LAF Number was taken please refresh the page and register again!";
                ImageButton2.Visible = true;
                
            }
            else
            {
                cmd.CommandText = "Insert into Savedb values ('" + laf.Text + "','" + DropDownList2.Text + "','" + code.Text + "','" + code0.Text + "','" + date.Text + "','" + customer.Text + "','" + DropDownList4.Text + "','" + DropDownList3.Text + "','" + DropDownList5.Text + "','" + DropDownList1.Text + "')";
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();

                con.Close();
                GenerateAutoID();
                Clear();
                Response.Redirect("save.aspx");

            }
        }

        private void Clear()
        {

            DropDownList2.AutoPostBack = true; 
            code.Text = "";
            date.Text = "";
            customer.Text = "";
            Calendar1.SelectedDates.Clear();
            DropDownList3.Text = "";
           
           
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
          //  date.Text = DateTime.Now.ToString();
           
            date.Text = Calendar1.SelectedDate.ToShortDateString();
            if(Calendar1.Visible)
            {
            Calendar1.Visible = false;

            }
            else
            {
                Calendar1.Visible = true;
            }
           
            Calendar1.SelectedDates.Clear();
        }
        protected void Button2_Click1(object sender, EventArgs e)
        {
           
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
          if(Calendar1.Visible)
          {
              Calendar1.Visible = false;
          }else
          {
              Calendar1.Visible = true;
          }
        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            con.Open();
            
            string chk = "select * from Branch where Branch_Name ='" + DropDownList1.Text+ "'";
            OleDbCommand cmd = new OleDbCommand(chk, con);
            OleDbDataReader dr = cmd.ExecuteReader();
         if(dr.HasRows)
         { 
           bool found = dr.Read();
          
            code.Text = dr["Branch_Code"].ToString();
         } else
         {
             code.Text = "";
             Label1.Text = "Please Select Branch";
         }
            //cmd.CommandText = chk;
            //cmd.Connection = con;
            //cmd.Parameters.AddWithValue("Branch", code.Text);
            //OleDbDataAdapter da = new OleDbDataAdapter(cmd);
           // code.Text = cmd.ToString();


          }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("save.aspx");
        }

      

    }
}