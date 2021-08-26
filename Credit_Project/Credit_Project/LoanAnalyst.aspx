<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoanAnalyst.aspx.cs" Inherits="Credit_Project.LoanAnalyst" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
  
        </title>
      <link href="Style/main.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
    <form id="form1" runat="server">
<div class="wrapper">
    <div class="header">

        <h1>
            <span class="auto-style3">BERHAN</span> <span class="auto-style5">BANK</span> 
    </h1>
       
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
                HI: <asp:Label ID="Label2" CssClass="Cap" runat="server" Text=""></asp:Label></a></li>
            
                <li>
                    <asp:Image ID="Image1" runat="server" ImageAlign="Right" Height="63px" ImageUrl="~/Style/berh.png" Width="105px" style="margin-left: 0px" />
                </li>
             </ul>
    </div>
    
    <div class="content">
        
           <table class="auto-style8">
               <tr>
                   <td class="auto-style9" colspan="2"><strong>Loan Type Control Panel Page</strong></td>
               </tr>
               <tr>
                   <td class="auto-style9" colspan="2">&nbsp;</td>
               </tr>
               <tr>
                   <td class="auto-style10"><span style="color: #000066">Edit Loan Type Section</span></td>
                   <td class="auto-style10">&nbsp;</td>
               </tr>
               <tr>
                   <td>
                       <asp:Label ID="Label1" runat="server" style="font-size: 16px; color: #000066" Text="Loan Type"></asp:Label>
&nbsp;:
                       <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="200px" CausesValidation="True"></asp:TextBox>
                   &nbsp;
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Input Loan Type" ForeColor="Red"></asp:RequiredFieldValidator>
                       <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Number is Not Allowed" ForeColor="Red" ValidationExpression="[a-z A-Z]+"></asp:RegularExpressionValidator>
                   </td>
                   <td>
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="auto-style13">
                   </td>
                   <td class="auto-style13">
                   </td>
               </tr>
               <tr>
                   <td>
                       <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Text="ADD New" Width="96px" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Button ID="Button2" runat="server" CssClass="auto-style11" Text="Delete" Width="86px" OnClick="Button2_Click" />
                   </td>
                   <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       </td>
               </tr>
               <tr>
                   <td class="auto-style14" style="text-align: left">
                       <asp:Label ID="Label3" runat="server" CssClass="auto-style12" style="font-size: 14px; text-align: justify"></asp:Label>
                   </td>
                   <td class="auto-style14">&nbsp;</td>
               </tr>
           </table>
        
           <style type="text/css">
               .auto-style3 {
                   color: #FF5F11;
                   font-size: x-large;
               }
               .Cap
               {
                   text-transform:capitalize;
               }
               .auto-style5 {
                   color: #0066CC;
                   font-size: x-large;
               }
               .auto-style8 {
                   width: 100%;
               }
               .auto-style9 {
                   font-size: large;
                   color: #000066;
                   text-align: left;
               }
               .auto-style10 {
                   font-size: medium;
               }
               .auto-style11 {
                   color: #000066;
                   font-size: 15px;
               }
               .auto-style12 {
                   color: #000066;
               }
               .auto-style13 {
                   height: 19px;
               }
               .auto-style14 {
                   height: 39px;
               }
        </style>
      
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

