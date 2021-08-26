<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Credit_Project.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            color: #0000FF;
        }
        size
        {
           align-content:center;
        }
        .auto-style7 {
            width: 543px;
        }
        .auto-style8 {
            color: #000066;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
      <h2 class="auto-style6">WELCOME</h2>
    <div class="size">
        <table>
            <tr>
                  <td class="auto-style7" rowspan="2">
                      <asp:Image ID="Image1" runat="server" Height="317px" ImageUrl="~/Style/berh.png" style="text-align: center" Width="597px" ImageAlign="Baseline" />
</td>
                  <td class="auto-style7">
                      <h2 class="auto-style8">
                          BERHAN BANK
                      </h2>
                      <h2 class="auto-style8">
                         Credit Analysis And Appraisal Department</h2>
                      <h2 class="auto-style8">
                          Loan Approval Form Monitoring System
                      </h2>
                      <h3>
                          &nbsp;</h3>
                      <p class="auto-style8">
                          &nbsp;</p>
                      </td>
            </tr>
            <tr>
                  <td class="auto-style7">
                       <asp:Image ID="Image2" runat="server" Height="200px" ImageUrl="~/Style/cap.png" style="text-align: center" Width="519px" ImageAlign="Baseline" />

                      </td>
            </tr>
                </table>
             </div>
         </asp:Content>

