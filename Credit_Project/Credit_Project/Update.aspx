<%@ page title="" language="c#" masterpagefile="~/site1.master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Credit_Project.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 117px;
        }
    .auto-style6 {
        height: 32px;
        text-align: left;
    }
    .auto-style7 {
        font-size: large;
        color: #000066;
    }
        .auto-style8 {
            font-weight: normal;
            color: #000066;
            text-align:left;
            margin:auto;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            font-size: 17px;
            color: #000066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentBody" runat="server">
    <table class="auto-style1">
        <h2 class="auto-style9" > <span  class="auto-style8"><strong>LAF Editing Page</strong></span> </h2>
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
                     <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Branch_Name" DataValueField="Branch_Name" Height="22px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="170px">
                     </asp:DropDownList>
            </td>
            <td>
                <asp:TextBox ID="code" runat="server" Width="73px"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="dat" runat="server" Width="77px"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="customer" runat="server" Width="154px"></asp:TextBox>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="Loan_Type" DataValueField="Loan_Type" Height="22px" Width="189px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server" Height="22px" Width="108px">
                    <asp:ListItem>--Select Option--</asp:ListItem>
                    <asp:ListItem>Existing C &amp; MB</asp:ListItem>
                    <asp:ListItem>Existing C &amp; NBM</asp:ListItem>
                    <asp:ListItem>New CC &amp; MB</asp:ListItem>
                    <asp:ListItem>New &amp; NMB</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource3" DataTextField="Analyst_Name" DataValueField="Analyst_Name" Height="22px" Width="107px">
                </asp:DropDownList>
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
</asp:Content>
