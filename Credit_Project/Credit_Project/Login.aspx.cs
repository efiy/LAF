using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace Credit_Project
{
    public partial class Login : System.Web.UI.Page
    {
        // OleDbCommand cmd = new OleDbCommand();
       
        // OleDbDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.Now.AddDays(-1));
            Response.Cache.SetNoStore();

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Administrator\Desktop\Credit\LAF.mdb"); 
            con.Open();
            
            string chk = "select count(*) from [credit] where username ='" + txtusername.Text + "' and password='" + txtpassword.Text + "'";
          OleDbCommand cmd = new OleDbCommand(chk, con);
            //OleDbDataAdapter da = new OleDbDataAdapter(chk,con);
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //if(dt.Rows.Count.ToString()=="1")
            //{
            //   
            //    Response.Redirect("Home.aspx");
            //}else
            //{
            //    Label3.Text = "Incorrect";   
            //}

            //OleDbCommand cmd = new OleDbCommand(chk, con);
          
            //con.Open();

          int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());

          con.Close();
          if (temp == 1)
          {
              Session["userName"] = txtusername.Text;
              Response.Redirect("Home.aspx");

          }
          else
          {
              Label3.Text = "Incorrect User Name or Password";
          }


        }

      

       

      
    }
}