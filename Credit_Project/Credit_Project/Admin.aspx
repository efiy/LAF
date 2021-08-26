<%@ Page EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Credit_Project.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <head >
    <title></title>
    <style >
        .formclass {
            padding: 15px;
            margin:50px auto;
            background:#fff;
            width: 622px;
            text-align: center;
            height:  350px;
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
            width: 293px;
            height: 163px;
        }
        .newStyle1 {
            font-family: "times New Roman", Times, serif;
        }
        .auto-style6 {
            font-size: 30px;
        }
        .auto-style7 {
            font-family: "times New Roman", Times, serif;
            font-size: 30px;
        }
    </style>

</head>
<body>
    <form id="form1">
         <div class="formclass">
              <span class="auto-style1"><span class="auto-style2"><strong>
              <img alt="" class="auto-style4" src="Style/berh.png" />BERHAN</strong></span> <span class="auto-style3"><strong>BANK</strong></span></span><br />
             
              <td class="auto-style2" colspan="2"><span class="auto-style7">Login Page</span><span class="auto-style6"></td></span><span class="newStyle1">&nbsp;</span><span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><br />
<asp:Label ID="Label1" CssClass="inpuit" placeholder="User Name" runat="server" TextMode="User Name"></asp:Label>
               <asp:TextBox ID="txtusername" CssClass="inpuit" placeholder="User Name"  runat="server" Height="5px" Width="212px"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="User Name is Required" ForeColor="Red" Width="150px"></asp:RequiredFieldValidator>
               <br />
               <asp:Label ID="Label2" CssClass="inpuit" placeholder="Password" runat="server" TextMode="Password"></asp:Label>   
                   <asp:TextBox ID="txtpassword" CssClass="inpuit" placeholder="Password" runat="server"  Height="5px" width="212px" TextMode="Password" ></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="Please Input Password" ForeColor="Red" Width="150px"></asp:RequiredFieldValidator>
                 <br />
                 <asp:Button ID="btnlogin" runat="server" OnClick="btnlogin_Click" Text="Login" />
&nbsp;<br />
             <asp:Label ID="Label3" runat="server" style="text-align: left" ForeColor="Red"></asp:Label>
     </div>
    </form>
    </body>
</asp:Content>
