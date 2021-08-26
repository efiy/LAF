<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AnalystSearch.aspx.cs" Inherits="Credit_Project.AnalystSearch" %>

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
                HI: <asp:Label ID="Label4" CssClass="Cap" runat="server" Text=""></asp:Label></a></li>
            
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
               .auto-style7 {
                   width: 597px;
                   text-align: left;
               }
               .auto-style8 {
                   width: 597px;
                   text-align: left;
                   font-size: 18px;
               }
               .newStyle1 {
                   font-family: "Times New Roman", Times, serif;
               }
               .newStyle2 {
                   font-family: "times New Roman", Times, serif;
               }
               .newStyle3 {
                   font-family: "times New Roman", Times, serif;
               }
               .newStyle4 {
                   font-family: "times New Roman", Times, serif;
               }
               .auto-style9 {
                   font-size: 14px;
               }
        </style>
        <table>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label1" runat="server" style="text-align: right; font-size: 17px; font-weight: 700; color: #000066;" Text="Analyst Name" CssClass="newStyle2"></asp:Label>
&nbsp;:
                    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource1" DataTextField="Analyst_Name" DataValueField="Analyst_Name" Height="20px" Width="205px">
                        <asp:ListItem>**-- Select Analyst --**</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select Analyst" ForeColor="Red" InitialValue="**-- Select Analyst --**"></asp:RequiredFieldValidator>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
                    &nbsp;
                    <asp:Label ID="Label2" runat="server" CssClass="newStyle3" style="font-size: 17px; color: #000066; font-weight: 700" Text="Total LAF"></asp:Label>
                    <strong><span class="auto-style9">:</span></strong>
                    <asp:Label ID="Label3" runat="server" CssClass="newStyle4" style="font-size: 15px; font-weight: 700"></asp:Label>
                    </td>
                <td class="auto-style7">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LAFConnectionString %>" ProviderName="<%$ ConnectionStrings:LAFConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Analyst]"></asp:SqlDataSource>
                </td>
                </tr>
            <tr>
                <td class="auto-style7" rowspan="2">
                    <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="True" EmptyDataText="NO Records Found..." AllowPaging="True" CellPadding="4" Font-Size="13px" ForeColor="#333333" GridLines="None" Height="26px" Width="1120px" style="text-align: left; margin-left: 0px;" EnableModelValidation="False" ValidateRequestMode="Disabled">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                   </asp:GridView>

        </td>
                <td class="auto-style8">
                    &nbsp;</td>
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

