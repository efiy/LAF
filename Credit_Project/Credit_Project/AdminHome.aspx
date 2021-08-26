<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="Credit_Project.AdminHome" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> </title>
      <link href="Style/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
<div class="wrapper">
    <div class="header">
        <h1>  <span class="auto-style3">BERHAN</span> <span class="auto-style5">BANK</span> </h1>
    </div>
    <div class="menu">
        <ul>
        <li><a href="AdminHome.aspx">Admin Home</a></li> 
             <li><a href="NewBranch.aspx">New Branch</a> </li>
            <li><a href="LoanAnalyst.aspx">Loan Type</a> 
             <ul>
               <li><a href="Analyst.aspx">Analyst</a> </li>
            </ul>
                </li>
            <li><a href="NewUser.aspx">Create User</a></li>
              <li><a href="AnalystSearch.aspx">Report</a></li>
            <li><a href="Up.aspx">Edit</a> </li>
             <li> <a href="Home.aspx" >User Page</a></li>
            
            
            <li><a>
                HI: <asp:Label ID="Label1" CssClass="Cap" runat="server" Text=""></asp:Label></a></li>
            
                <li>
                    <asp:Image ID="Image1" runat="server" ImageAlign="Right" Height="64px" ImageUrl="~/Style/berh.png" Width="105px" style="margin-left: 0px" />
                </li>
             </ul>
    </div>
    
    <div class="content">
        
           <style type="text/css">
            .Cap
            {
                text-transform:capitalize;
            }  
               .auto-style3 {
                   color: #FF5F11;
                   font-size: x-large;
               }
               .auto-style5 {
                   color: #0066CC;
                   font-size: x-large;
               }
               .auto-style6 {
                   font-size: large;
                   color: #000066;
               }
               .auto-style7 {
                   width: 597px;
                   text-align: left;
               }
               .auto-style8 {
                   width: 597px;
                   text-align: left;
                   font-size: 18px;
               }
               .auto-style9 {
                   color: #000066;
               }
               .newStyle1 {
                   font-family: "Times New Roman", Times, serif;
               }
        </style>
        <table>
            <tr>
                <td class="auto-style7">
           <span class="auto-style6">Welcome To Administrator Page </span>
                    </td>
                <td class="auto-style7">
                    &nbsp;</td>
                </tr>
            <tr>
                <td class="auto-style7" rowspan="2">
         <asp:Image ID="Image2" runat="server" Height="296px" ImageUrl="~/Style/berh.png" style="text-align: center" Width="597px" ImageAlign="Baseline" />

        </td>
                <td class="auto-style8">
                    <span class="newStyle1"><span class="auto-style9"><strong>ABOUT ADMIN PAGE</strong></span><br class="auto-style9" />
                    <br class="auto-style9" />
                    <span class="auto-style9">This Page Contains Five Main secessions </span>
                    <br class="auto-style9" />
                    <span class="auto-style9"><strong>: Create User Page</strong></span><br class="auto-style9" />
                    <span class="auto-style9">In this page The Administrator creates an account for users </span>
                    <br class="auto-style9" />
                    <span class="auto-style9"><strong>: New Branch</strong></span><br class="auto-style9" />
                    <span class="auto-style9">In this Page Newly Opened Branches Are Added and Listed on Branch Lists</span><br class="auto-style9" />
                    <span class="auto-style9"><strong>: Loan Type</strong></span>
                    <br class="auto-style9" />
                    <span class="auto-style9">In this Page Loan Type Can Be Removed Or Added&nbsp; </span>
                    <br class="auto-style9" />
                    <span class="auto-style9"><strong>: Analyst </strong></span>
                    <br class="auto-style9" />
                    <span class="auto-style9">In this Page The Analyst Name is Added or Deleted.</span>
                    <br />
                    <span class="auto-style9"><strong>:</strong></span> <span class="auto-style9"><strong>Report</strong></span><br />
                    <span class="auto-style9">Contains Total Amount of LAF Handled By The Analyst </span>&nbsp;</span></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
        </table>
       </div>
    <div class="clear"></div>
        <div class="footer"> 
            <h3>
                Copyright BERHANBANK@IT_DEPARTMENT_2019
            </h3>
        </div>
    </div>
    </form>
</body>
</html>

