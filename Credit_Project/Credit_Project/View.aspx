<%@ Page EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="Credit_Project.View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentBody" runat="server">
      <asp:Button ID="Button1" runat="server" Text="Export to Excel" Height="22px" OnClick="Button1_Click" Width="114px" style="font-weight: 700" />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="13" Width="1125px" EnableModelValidation="False" ValidateRequestMode="Disabled">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="LAF_No" HeaderText="LAF_No" SortExpression="LAF_No" />
            <asp:BoundField DataField="Individual/Non" HeaderText="Individual/Non" SortExpression="Individual/Non" />
            <asp:BoundField DataField="Branch_code" HeaderText="Branch_code" SortExpression="Branch_code" />
            <asp:BoundField DataField="C_Date" HeaderText="C_Date" SortExpression="C_Date" />
            <asp:BoundField DataField="Customer_Name" HeaderText="Customer_Name" SortExpression="Customer_Name" />
            <asp:BoundField DataField="Loan_Type" HeaderText="Loan_Type" SortExpression="Loan_Type" />
            <asp:BoundField DataField="For_Loan_Only" HeaderText="For_Loan_Only" SortExpression="For_Loan_Only" />
            <asp:BoundField DataField="Analyst_Name" HeaderText="Analyst_Name" SortExpression="Analyst_Name" />
            <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
        </Columns>
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LAFConnectionString %>" ProviderName="<%$ ConnectionStrings:LAFConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Savedb]"></asp:SqlDataSource>
 
</asp:Content>
