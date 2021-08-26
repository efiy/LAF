<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="save.aspx.cs" Inherits="Credit_Project.save" %>
<asp:Content ID="content1" ContentPlaceHolderID="title" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        height: 26px;
        text-align: justify;
    }
    .auto-style5 {
        text-align: right;
    }
    .auto-style6 {
        text-align: left;
    }
        .auto-style8 {
            text-align: justify;
            }
        .newStyle1 {
            font-family: "Times New Roman", Times, serif;
            color: #000080;
            font-size: 14px;
        }
        .auto-style10 {
            text-align: right;
            font-size: 13pt;
            height: 29px;
        width: 175px;
    }
        .newStyle2 {
            font-family: "Times New Roman", Times, serif;
            color: #000080;
        }
        .newStyle3 {
            font-family: "Times New Roman", Times, serif;
            color: #000080;
        }
        .newStyle1 {
            font-family: "Times New Roman", Times, serif;
            color: #000080;
        }
        .newStyle1 {
            font-family: "Times New Roman", Times, serif;
            color: #000080;
        }
        .newStyle1 {
            font-family: "Times New Roman", Times, serif;
            color: #000080;
        }
        .newStyle1 {
            font-family: "Times New Roman", Times, serif;
            color: #000080;
        }
        .newStyle4 {
            font-family: "Times New Roman", Times, serif;
            color: #000080;
        }
        .auto-style11 {
        font-family: "Times New Roman", Times, serif;
        color: #000066;
        font-size: 14px;
        text-align: right;
        width: 175px;
    }
        .auto-style13 {
        text-align: left;
        width: 266px;
    }
    .auto-style14 {
        height: 26px;
        text-align: left;
        color: #FF5F11;
        font-size: x-large;
    }
    .auto-style15 {
        height: 26px;
        text-align: right;
        color: #003FBF;
        font-size: x-large;
        width: 175px;
    }
    .auto-style16 {
        text-align: right;
        color: #0066CC;
        font-size: x-large;
        width: 175px;
    }
    .auto-style17 {
        text-align: left;
        height: 29px;
    }
    .auto-style18 {
        height: 26px;
        text-align: left;
        color: #FF5F11;
        font-size: x-large;
        width: 266px;
    }
        .auto-style1 {
            width: 946px;
        }
        .newStyle5 {
            font-family: "times New Roman", Times, serif;
        }
        .auto-style20 {
            text-align: right;
            font-size: 13pt;
            height: 29px;
            width: 175px;
            font-family: "times New Roman", Times, serif;
            color: #000066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    
    <table class="auto-style1">
    <caption style="text-align: center">
        <br />
    </caption>
    <tr>
        <td class="auto-style16" rowspan="2">
            <span class="newStyle1">LAF No</span></td>
        <td class="auto-style6" colspan="2">
            <asp:TextBox ID="laf" runat="server" Width="224px" Height="21px" style="text-align: center" Enabled="False"></asp:TextBox>
            <asp:ImageButton ID="ImageButton2" runat="server" Height="20px" OnClick="ImageButton2_Click" Width="28px" ImageUrl="~/Style/Refresh.png" />
        </td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="2">
            <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
          <tr>
        <td class="auto-style16">
            <span class="newStyle1">Individual/Non</span></td>
        <td class="auto-style6" colspan="2">
            <asp:DropDownList ID="DropDownList2" runat="server" Height="23px" Width="229px" AppendDataBoundItems="True">
                <asp:ListItem>**--Select Options--**</asp:ListItem>
                <asp:ListItem>INDCR</asp:ListItem>
                <asp:ListItem>CORCR</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Individual/Non Is Required" ForeColor="#FF3300" InitialValue="**--Select Options--**"></asp:RequiredFieldValidator>
        </td>
    </tr>
        <tr>
        <td class="auto-style11">
            Branch</td>
        <td class="auto-style14" colspan="2">
            <asp:DropDownList ID="DropDownList1" runat="server" Width="227px" Height="23px" AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" DataSourceID="SqlDataSource1" DataTextField="Branch_Name" DataValueField="Branch_Name" >
                <asp:ListItem Selected="False">--Select Branch--</asp:ListItem>
             
            </asp:DropDownList>
            &nbsp;<asp:Label ID="Label1" runat="server" style="font-size: 13px"></asp:Label>
        </td>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LAFConnectionString %>" ProviderName="<%$ ConnectionStrings:LAFConnectionString.ProviderName %>" SelectCommand="SELECT [Branch_Name] FROM [Branch]"></asp:SqlDataSource>
            <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10">
            <span class="newStyle1">Branch Code</span></td>
        <td class="auto-style17" colspan="2">
            <asp:TextBox ID="code" runat="server" Width="224px" Height="21px" Enabled="False"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="code" ErrorMessage="Branch Code Is Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
  
    <tr>
        <td class="auto-style20">
            Amount</td>
        <td class="auto-style17" colspan="2">
            <asp:TextBox ID="code0" runat="server" Width="224px" Height="21px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="code0" ErrorMessage="Amount Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
  
    <tr>
        <td class="auto-style11">
            Date</td>
        <td class="auto-style13">
            <asp:TextBox ID="date" runat="server" Width="224px" Height="21px" Enabled="False"></asp:TextBox>
            <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" Height="21px" ImageUrl="~/Style/Calender.jpg" OnClick="ImageButton1_Click" Width="28px" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="date" ErrorMessage="Date is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style8" rowspan="4">
            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="16px" OnDataBinding="Calendar1_SelectionChanged" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Visible="False" Width="16px" UseAccessibleHeader="False">
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                <OtherMonthDayStyle ForeColor="#CC9966" />
                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                <SelectorStyle BackColor="#FFCC66" />
                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            </asp:Calendar>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">
            Customer Name</td>
        <td class="auto-style13">
            <asp:TextBox ID="customer" runat="server" Width="224px" Height="18px" ></asp:TextBox>
            &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="customer" ErrorMessage="Input Name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="customer" ErrorMessage="Only Alphabets are Alloewd" ForeColor="Red" ValidationExpression="[a-z A-Z -. /]+"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">
            Loan Type</td>
        <td class="auto-style18">
            <asp:DropDownList ID="DropDownList4" runat="server"  DataSourceID="SqlDataSource2" DataTextField="Loan_Type" DataValueField="Loan_Type" Height="23px" Width="227px" AppendDataBoundItems="True">
                <asp:ListItem>--Select Option--</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList4" ErrorMessage="Please Specify The Loan Type" ForeColor="#FF3300" style="font-size: small" InitialValue="--Select Option--"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">
            For Loan Only</td>
        <td class="auto-style13">
            <asp:DropDownList ID="DropDownList3" runat="server" Height="23px" Width="227px">
                <asp:ListItem>**--Select Option--**</asp:ListItem>
                <asp:ListItem>Existing C &amp; MB</asp:ListItem>
                <asp:ListItem>Existing C &amp; NMB</asp:ListItem>
                <asp:ListItem>New CC &amp; MB</asp:ListItem>
                <asp:ListItem>New &amp; NMB</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Field Is Required" ForeColor="#FF3300" InitialValue="**--Select Option--**"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">
            Analyst Name</td>
        <td class="auto-style6" colspan="2">
            <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource3" DataTextField="Analyst_Name" DataValueField="Analyst_Name" Height="23px" Width="227px" AppendDataBoundItems="True">
                <asp:ListItem>--Select Option--</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList5" ErrorMessage="Analyst Name Is Required" ForeColor="#FF3300" InitialValue="--Select Option--"></asp:RequiredFieldValidator>
        </td>
    </tr>
    
    <tr>
        <td class="auto-style15">
            &nbsp;</td>
        <td class="auto-style14" colspan="2">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" style="font-weight: 700" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Submitted" runat="server" ForeColor="Blue" style="font-size: medium"></asp:Label>
        &nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LAFConnectionString %>" ProviderName="<%$ ConnectionStrings:LAFConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Loan]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:LAFConnectionString %>" ProviderName="<%$ ConnectionStrings:LAFConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Analyst]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>
