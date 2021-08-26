<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Credit_Project.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        text-align: left;
    }
    .auto-style9
    {
        align-content:inherit;
        width:800px;
        height:94px;
    }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            color: #000066;
        }
        .newStyle4 {
            font-family: "times New Roman", Times, serif;
        }
        .auto-style12 {
            font-family: "times New Roman", Times, serif;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentBody" runat="server">
     <table class="auto-style1" style="text-align: left">
        <caption class="auto-style7">
      <h2  class="auto-style10">  <span class="auto-style11">Record Searching Page</span> </h2>
               <div class="auto-style9">
                   <asp:Label ID="Label1" runat="server" Text="Enter Branch Name" Width="200px" Font-Size="Medium" ForeColor="#000066" Height="22px" CssClass="auto-style12"></asp:Label> : 
                   <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="205px" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Branch_Name" DataValueField="Branch_Name">
                       <asp:ListItem>**-- Select Branch --**</asp:ListItem>
                   </asp:DropDownList>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select Branch " ForeColor="Red" InitialValue="**-- Select Branch --**" ValidateRequestMode="Enabled"></asp:RequiredFieldValidator>
                   </br>
                   <asp:Label ID="Label2" runat="server" Text="Enter LAF Number" Width="200px" Font-Size="Medium" ForeColor="#000066" Height="22px" CssClass="auto-style12"></asp:Label> : <asp:TextBox ID="laf_no" runat="server" Width="200px"></asp:TextBox>
      </br>
                    <asp:Label ID="Label3" runat="server" Text="Enter Customer Name" Width="200px" Font-Size="Medium" ForeColor="#000066" Height="22px" CssClass="auto-style12"></asp:Label> : <asp:TextBox ID="customer" runat="server" Width="200px"></asp:TextBox>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <asp:Label ID="Label4" runat="server" Text="Select Analyst" Width="200px" Font-Size="Medium" ForeColor="#000066" Height="22px" CssClass="auto-style12"></asp:Label> :&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource2" DataTextField="Analyst_Name" DataValueField="Analyst_Name" Height="20px" Width="209px">
                       <asp:ListItem>**--Select Analyst--**</asp:ListItem>
                   </asp:DropDownList>
                   &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Select Analyst" ForeColor="Red" InitialValue="**--Select Analyst--**"></asp:RequiredFieldValidator>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </br>
        <asp:Button ID="ButSearch" runat="server" Text="Search" OnClick="ButSearch_Click" Height="29px" style="font-weight: 700" Width="69px" />                         
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LAFConnectionString %>" ProviderName="<%$ ConnectionStrings:LAFConnectionString.ProviderName %>" SelectCommand="SELECT [Branch_Name] FROM [Branch]"></asp:SqlDataSource>      
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LAFConnectionString %>" ProviderName="<%$ ConnectionStrings:LAFConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Analyst]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="True" EmptyDataText="NO Records Found..." AllowPaging="True" CellPadding="4" Font-Size="13px" ForeColor="#333333" GridLines="None" Height="26px" Width="1100px" style="text-align: left; margin-left: 0px;" PageSize="8">
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
      </div>
                   </table>
</asp:Content>
