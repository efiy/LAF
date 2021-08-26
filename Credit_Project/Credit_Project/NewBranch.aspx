<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewBranch.aspx.cs" Inherits="Credit_Project.NewBranch" %>

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
                HI: <asp:Label ID="Label4" CssClass="Cap" runat="server" Text=""></asp:Label></a></li>
            
                <li>
                     <asp:Image ID="Image1" runat="server" ImageAlign="Right" Height="63px" ImageUrl="~/Style/berh.png" Width="105px" style="margin-left: 0px" />
                </li>
             </ul>
    </div>
    
    <div class="content">
        
           <table class="auto-style8">
               <tr>
                   <td colspan="3">
                       <h2 class="auto-style12">New Branch Registration Page</h2>
                       <p>&nbsp;</p>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style9">
                       <asp:Label ID="Label1" runat="server" Text="Branch Name" style="font-size: 15px; font-weight: 700; color: #000066;"></asp:Label>
&nbsp;:</td>
                   <td class="auto-style10">
                       
                       <asp:TextBox ID="TextBox1" CssClass="uppercase" runat="server" Height="27px" Width="220px"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Branch Name Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                       <br />
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Numbers Are Not Allowed!" ForeColor="Red" ValidationExpression="[a-z A-Z]+"></asp:RegularExpressionValidator>
                   </td>
                   <td>&nbsp;</td>
               </tr>
               <tr>
                   <td class="auto-style9">
                       <asp:Label ID="Label2" runat="server" Text="Branch Code" style="font-size: 15px; font-weight: 700; color: #000066;"></asp:Label>
&nbsp;:</td>
                   <td class="auto-style10">
                       <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="220px"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Branch Code is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                       <br />
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Allow Only Number With 3 Digites" ForeColor="Red" ValidationExpression="\d{3}"></asp:RegularExpressionValidator>
                   </td>
                   <td>&nbsp;</td>
               </tr>
               <tr>
                   <td>&nbsp;</td>
                   <td style="text-align: left">
                       <asp:Button ID="Button1" runat="server" Text="Save" style="font-size: 15px; font-weight: 700; color: #000066;" OnClick="Button1_Click" />
                       <asp:Label ID="Label3" runat="server" ForeColor="Red" style="font-size: 13px"></asp:Label>
                   </td>
                   <td>&nbsp;</td>
               </tr>
               <tr>
                   <td colspan="3" class="auto-style11"></td>
               </tr>
               <tr>
                   <td colspan="3">&nbsp;</td>
               </tr>
               <tr>
                   <td colspan="3">&nbsp;</td>
               </tr>
           </table>
      
           <style type="text/css">
               .uppercase
               {
                   text-transform:uppercase;
               }
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
               .auto-style8 {
                   width: 100px;
                   height:40px;
               }
               .auto-style9 {
                   text-align: right;
               }
               .auto-style10 {
                   text-align: left;
               }
               .auto-style11 {
                   height: 19px;
               }
               .auto-style12 {
                   color: #000066;
               }
               .newStyle1 {
                   font-family: "Times New Roman", Times, serif;
               }
               .auto-style14 {
                   color: #000066;
                   font-family: "Times New Roman", Times, serif;
                   font-size: 14px;
               }
               .newStyle2 {
                   font-family: "Times New Roman", Times, serif;
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

