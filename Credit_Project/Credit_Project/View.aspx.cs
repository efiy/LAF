using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Credit_Project
{
    public partial class View : System.Web.UI.Page
    {

        //OleDbConnection cs = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\User\Desktop\Credit\LAF.mdb");

        protected void Page_Load(object sender, EventArgs e)
        {
            //GridView1.AllowPaging = false;   
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.AllowPaging = false;
        }
        //public override void VerifyRenderingInServerForm(Control control)
        //{
        //    //base.VerifyRenderingInServerForm(control);
        //}

        private void ExportGrid(string fileName, string contentType)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.xls");
            Response.Charset = "";
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
              GridView1.AllowPaging = false;
               GridView1.DataBind();
               GridView1.RenderControl(hw);
             //  GridView1.RenderControl(hw);
                Response.Output.Write(sw);
                Response.Flush();
                Response.End();
          
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            ExportGrid("GridviewData.xls", "application/vnd.ms-excel");
            GridView1.AllowPaging = false;
            GridView1.AllowCustomPaging = false;
        }

        //public override void VerifyRenderingInServerForm(Control conn)
        //{
        //    //base.VerifyRenderingInServerForm(control);
        //}
    }
}