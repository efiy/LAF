<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Credit_Project.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        }
        .auto-style5 {
            color: #0000FF;
        }
        .auto-style6 {
            color: #FF9900;
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
            width: 183px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="formclass">
            <span class="auto-style1"><span class="auto-style2"><strong>
        <table class="auto-style1">
            <tr>
                <td class="auto-style8" rowspan="7">&nbsp;&nbsp;&nbsp; &nbsp;<span class="auto-style1"><span class="auto-style2"><strong><img alt="" class="auto-style7" src="Style/berh.png" /></td>
                <td colspan="3" class="auto-style4"><span class="auto-style5">BERHAN </span><span class="auto-style6">BANK</span></td>
            </tr>
            <tr>
                <td colspan="3" class="auto-style4">Account Registration Page </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label2" runat="server" style="text-align: right; font-size: large;" Text="User Name" Width="100px"></asp:Label>
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
                    <asp:Label ID="Label3" runat="server" Text="Password" style="font-size: large"></asp:Label>
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
                    <asp:Label ID="Label4" runat="server" Text="Confirm Password" style="font-size: large" Width="150px"></asp:Label>
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
                <td>&nbsp;</td>
                <td colspan="2">
                    <asp:Button ID="btnregister" runat="server" OnClick="btnregister_Click" Text="Register" />
&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Click Here To Login</asp:HyperLink>
&nbsp; </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="2">
                    <asp:Label ID="Label5" runat="server" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
        </table>
    
    
   </div>
    </form>
</body>
</html>
