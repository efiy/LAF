<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Up.aspx.cs" Inherits="Credit_Project.Control" %>

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
                    <asp:Image ID="Image1" runat="server" ImageAlign="Right" Height="62px" ImageUrl="~/Style/berh.png" Width="105px" style="margin-left: 0px" />
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
               .newStyle1 {
                   font-family: "Times New Roman", Times, serif;
               }
               .auto-style6 {
                   font-size: large;
               }
               .auto-style7 {
                   font-size: x-large;
               }
               .auto-style1 {
                   font-family: "times New Roman", Times, serif;
               }
               .newStyle2 {
                   font-family: "times New Roman", Times, serif;
               }
               .auto-style8 {
                   font-family: "times New Roman", Times, serif;
                   font-size: 20px;
                   color: #000066;
               }
        </style>
        <table class="auto-style1">
           <span  class="auto-style8"><strong>LAF Editing Page</strong></span>
        <tr>
            <td class="auto-style6">
                <span class="auto-style10">Enter LAF Number</span><span class="auto-style7">&nbsp;</span>&nbsp;
                <asp:TextBox ID="laf" runat="server" Height="25px" Width="128px"></asp:TextBox>
            &nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="laf" ErrorMessage="Please Input LAF No" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Label ID="Label13" runat="server" ForeColor="#000066"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
                <br />
        <table runat="server" id="StResult" visible="false" >
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="LAF No" Width="63px"></asp:Label>
            </td>
            
            <td>
                
                <asp:Label ID="Label4" runat="server" Text="Individual/Non" Width="100px"></asp:Label>
            </td>
             <td>
                <asp:Label ID="Label12" runat="server" Text="Branch" Width="100px"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Branch code" Width="80px"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Date" Width="85px"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Customer Name" Width="150px"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Loan Type" Width="100px"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label10" runat="server" Text="For Loan" Width="100px"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Analyst Name" Width="100px"></asp:Label>
            </td>
           
            <td>
                <asp:Label ID="Label16" runat="server" Text="Amount" Width="100px"></asp:Label>
            </td>
           
        </tr>
            <tr>
            <td>
                <asp:Label ID="Label14" runat="server" Height="22px" Width="67px"></asp:Label>
            </td>
            
                <td>
                
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="97px">
                        <asp:ListItem>--Select Option--</asp:ListItem>
                        <asp:ListItem>INDCR</asp:ListItem>
                        <asp:ListItem>CORCR</asp:ListItem>
                    </asp:DropDownList>
            </td>
                 <td>
                     <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Branch_Name" DataValueField="Branch_Name" Height="20px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="119px">
                     </asp:DropDownList>
            </td>
            <td>
                <asp:TextBox ID="code" runat="server" Width="73px" Enabled="False"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="dat" runat="server" Width="77px"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="customer" runat="server" Width="154px"></asp:TextBox>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="Loan_Type" DataValueField="Loan_Type" Height="17px" Width="140px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server" Height="22px" Width="108px">
                    <asp:ListItem>--Select Option--</asp:ListItem>
                    <asp:ListItem>Existing C & MB</asp:ListItem>
                    <asp:ListItem>Existing C & NBM</asp:ListItem>
                    <asp:ListItem>New CC & MB</asp:ListItem>
                    <asp:ListItem>New & NMB</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource3" DataTextField="Analyst_Name" DataValueField="Analyst_Name" Height="22px" Width="107px" Enabled="False">
                </asp:DropDownList>
            </td>
           
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="105px"></asp:TextBox>
            </td>
           
        </tr>
            </table>
                <asp:Button ID="Button2" runat="server" Text="Update Record" OnClick="Button2_Click" style="text-align: left" />
                <asp:Label ID="Label15" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LAFConnectionString %>" ProviderName="<%$ ConnectionStrings:LAFConnectionString.ProviderName %>" SelectCommand="SELECT [Branch_Name] FROM [Branch]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LAFConnectionString %>" ProviderName="<%$ ConnectionStrings:LAFConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Loan]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:LAFConnectionString %>" ProviderName="<%$ ConnectionStrings:LAFConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Analyst]"></asp:SqlDataSource>
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
