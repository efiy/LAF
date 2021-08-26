<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Credit_Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style >
        .formclass {
            padding: 15px;
            margin: 100px auto;
            background:#fff;
            width: 622px;
            text-align: center;
            height: 405px;
        }
        body
        {
            background:#ccc;
        }
        .inpuit {
            padding: 15px;
            }
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            color: #0000FF;
        }
        .auto-style3 {
            color: #FF9900;
        }
        .auto-style4 {
            width: 329px;
            height: 183px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

    


         <div class="formclass">
              <span class="auto-style1"><span class="auto-style2"><strong>
              <img alt="" class="auto-style4" src="Style/berh.png" />BERHAN</strong></span> <span class="auto-style3"><strong>BANK</strong></span></span><br />
             
              <td class="auto-style2" colspan="2"><span class="auto-style1">Login Page</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><br />
<asp:Label ID="Label1" CssClass="inpuit" placeholder="User Name" runat="server" TextMode="User Name"></asp:Label>
               <asp:TextBox ID="txtusername" CssClass="inpuit" placeholder="User Name"  runat="server" Height="5px" Width="212px"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="User Name is Required" ForeColor="Red" Width="150px"></asp:RequiredFieldValidator>
               <br />
               <asp:Label ID="Label2" CssClass="inpuit" placeholder="Password" runat="server" TextMode="Password"></asp:Label>   
                   <asp:TextBox ID="txtpassword" CssClass="inpuit" placeholder="Password" runat="server"  Height="5px" width="212px" TextMode="Password" ></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="Please Input Password" ForeColor="Red" Width="150px"></asp:RequiredFieldValidator>
                 <br />
                 <asp:Button ID="btnlogin" runat="server" OnClick="btnlogin_Click" Text="Login" Height="29px" style="font-weight: 700" Width="58px" />
&nbsp;<br />
             <asp:Label ID="Label3" runat="server" style="text-align: left" ForeColor="Red"></asp:Label>
     </div>
    </form>
                                                                                                                                    </body>
</html>
