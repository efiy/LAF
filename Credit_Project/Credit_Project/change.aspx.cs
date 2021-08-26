using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace Credit_Project
{
    public partial class change : System.Web.UI.Page
    {
        OleDbCommand com;
        byte up;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Administrator\Desktop\Credit\LAF.mdb");
            con.Open();

            string chk = "select count(*) from [credit] where username='" + Session["userName"].ToString() + "' and password='" + TextBox1.Text + "'";
            OleDbCommand cmd = new OleDbCommand(chk, con);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            con.Close();
            if (temp == 1)
            {
                up = 1;
                //Session["userName"] = txtusername.Text;
                //Response.Redirect("Home.aspx");

            }

            else
            {
                Label5.Text = "Incorrect Current User Password";
            }
            if (up == 1)
            {

                con.Open();
                string str = "update credit set [password]=@password where username='" + Session["userName"].ToString() + "'";
                com = new OleDbCommand(str, con);
                com.Parameters.Add(new OleDbParameter("@password", OleDbType.VarChar, 50));
                com.Parameters["@password"].Value = TextBox2.Text;
                com.ExecuteNonQuery();
                con.Close();
                Label5.Text = "Password changed Successfully";
                //TextBox1.Text = "";
                //TextBox2.Text = "";
                //TextBox3.Text = "";

            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
            {
                TextBox1.TextMode = TextBoxMode.SingleLine;
                TextBox2.TextMode = TextBoxMode.SingleLine;
                TextBox3.TextMode = TextBoxMode.SingleLine;
            }
            else
            // if (CheckBox1.Checked == false)
            {
                TextBox1.TextMode = TextBoxMode.Password;
                TextBox2.TextMode = TextBoxMode.Password;
                TextBox3.TextMode = TextBoxMode.Password;
            }

        }
    }
}