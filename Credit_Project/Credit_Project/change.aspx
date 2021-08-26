<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="change.aspx.cs" Inherits="Credit_Project.change" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            text-align: right;
        }
        .auto-style8 {
            text-align: right;
            height: 35px;
        }
        .auto-style9 {
            height: 35px;
        }
        .auto-style10 {
            height: 35px;
            width: 207px;
        }
        .auto-style11 {
            width: 207px;
        }
        .auto-style12 {
            text-align: center;
        }
        .newStyle4 {
            font-family: "times New Roman", Times, serif;
        }
        .auto-style13 {
            font-family: "times New Roman", Times, serif;
            font-size: 22px;
            color: #000066;
        }
        .newStyle5 {
            font-family: "times New Roman", Times, serif;
        }
        .auto-style14 {
            font-family: "times New Roman", Times, serif;
            font-size: 14px;
            color: #000066;
        }
        .newStyle6 {
            font-family: "times New Roman", Times, serif;
        }
        .newStyle7 {
            font-family: "times New Roman", Times, serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
        <table class="auto-style6">
        <tr>
            <td colspan="3" class="auto-style12"><span class="auto-style13"><strong>Password Changing Page</strong></span> </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label2" runat="server" Text="Current Password" CssClass="auto-style14"></asp:Label>
&nbsp;: </td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox1" runat="server" Height="22px" TextMode="Password" Width="197px"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Show Password" CssClass="newStyle6" ViewStateMode="Disabled" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Current Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label3" runat="server" Text="New Password" CssClass="auto-style14"></asp:Label>
&nbsp;: </td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox2" runat="server" Height="22px" TextMode="Password" Width="197px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="New Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label4" runat="server" Text="Confirm Password" CssClass="auto-style14"></asp:Label>
&nbsp;: </td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox3" runat="server" Height="22px" TextMode="Password" Width="197px"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Both Password Must be The Same" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">&nbsp;</td>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" CssClass="newStyle7" style="font-size: medium; font-weight: 700; color: #000066" />
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
