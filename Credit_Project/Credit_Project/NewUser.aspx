<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewUser.aspx.cs" Inherits="Credit_Project.NewUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
  
        </title>
      <link href="Style/main.css" rel="stylesheet" type="text/css" />
  <style type="text/css">
        body
        {
            background:#ccc;
        }
        .formclass {
            padding: 15px;
            margin: 100px auto;
            background:#fff;
            width: 983px;
            text-align: center;
            height: 410px;
        }
        .auto-style1 {
            width: 75%;
            height: 361px;
            margin-left: 94px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 197px;
        }
        .auto-style4 {
            font-size: x-large;
            text-align: center;
          color: #000066;
      }
        .auto-style5 {
            color: #0000FF;
        }
        .auto-style7 {
            height: 266px;
            font-size: x-large;
            text-align: center;
            width: 243px;
            float: left;
        }
        .auto-style8 {
            height: 270px;
            font-size: x-large;
            text-align: center;
            width: 200px;
        }
        .Cap
        {
            text-transform:capitalize;
        }
    </style>  
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
                HI: <asp:Label ID="Label1" CssClass="Cap" runat="server" Text=""></asp:Label></a></li>
            
                <li>
                    <asp:Image ID="Image1" runat="server" ImageAlign="Right" Height="63px" ImageUrl="~/Style/berh.png" Width="105px" style="margin-left: 0px" />
                </li>
             </ul>
    </div>
    
    <div class="content">
        
           <style type="text/css">
               .auto-style3 {
                   color: #FF5F11;
                   font-size: x-large;
               }
               .auto-style5 {
                   color: #0066CC;
                   font-size: x-large;
               }
               .auto-style7 {
                   width: 350px;
                   text-align: left;
               }
               .auto-style9 {
                   font-weight: normal;
               }
               .auto-style10 {
                   height: 37px;
               }
               .newStyle1 {
                   font-family: "Times New Roman", Times, serif;
                   text-align: left;
               }
               .auto-style11 {
                   font-size: x-large;
                   text-align: left;
                   color: #000066;
               }
               .newStyle2 {
                   font-family: "times New Roman", Times, serif;
               }
        </style>
       <span class="auto-style1"><span class="auto-style2"><strong>
        <table class="auto-style1">
            <tr>
                <td class="auto-style8" rowspan="8">&nbsp;&nbsp;&nbsp; &nbsp;<span class="auto-style1"><span class="auto-style2"><strong><img alt="" class="auto-style7" src="Style/berh.png" /></td>
                
            </tr>
            </span></span>
            <tr>
                <td colspan="3" class="auto-style11"><span class="newStyle1">User Account Registration Page </span> </td>
            </tr>
            <span class="auto-style2">
       <span class="auto-style1">
            <tr>
                <td colspan="3" class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label2" runat="server" style="text-align: right; font-size: large; color: #000066;" Text="User Name" Width="100px" CssClass="newStyle2"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtusername" runat="server" Width="215px" Height="30px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="User Name Is Required" ForeColor="Red" Width="200px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label3" runat="server" Text="Password" style="font-size: large; color: #000066;" CssClass="newStyle2"></asp:Label>
                </td>
                <td class="auto-style3">
                    &nbsp;
                    <asp:TextBox ID="txtpassword" runat="server" Width="215px" TextMode="Password" Height="30px"></asp:TextBox>
                &nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="Password Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label4" runat="server" Text="Confirm Password" style="font-size: large; color: #000066;" Width="171px" CssClass="newStyle2"></asp:Label>
&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;
                    <asp:TextBox ID="txtpassword0" runat="server" Width="215px" TextMode="Password" Height="30px"></asp:TextBox>
&nbsp;
                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpassword0" ErrorMessage="Confirm Password Is Required" ForeColor="Red" Width="300px"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtpassword0" ErrorMessage="Both Password Must Be the Same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td colspan="2" class="auto-style10">
                    <asp:Button ID="btnregister" runat="server" OnClick="btnregister_Click" Text="Register" style="color: #000066; font-weight: 700;" />
&nbsp;&nbsp;
                    <span class="auto-style9">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" style="font-size: 14px; font-weight: 700">Click Here To Login</asp:HyperLink>
                    </span>&nbsp; </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="2">
                    <asp:Label ID="Label5" runat="server" ForeColor="Blue" style="font-size: 13px"></asp:Label>
                </td>
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

