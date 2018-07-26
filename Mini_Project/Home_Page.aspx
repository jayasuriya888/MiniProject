<%@ Page Title="" Language="C#" MasterPageFile="~/MasterForm.Master" AutoEventWireup="true" CodeBehind="Home_Page.aspx.cs" Inherits="Mini_Project.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
            border: 4px solid #000080;
            background-color: #FFFF00;
        }
        .auto-style8 {
            font-size: large;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="5" cellspacing="10" class="auto-style6">
        <tr>
            <td class="auto-style8" colspan="2" style="font-weight: 200; font-size: x-large">Visitor Information - Home Page</td>
        </tr>
        <tr>
            <td class="auto-style8" style="font-weight: 200; font-size: x-large">Check In</td>
            <td class="auto-style8" style="font-weight: 200; font-size: x-large">
                <asp:Button ID="btncheckin" runat="server" Font-Size="Large" Text="Click Here!" OnClick="btncheckin_Click1" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8" style="font-weight: 200; font-size: x-large">Check Out</td>
            <td class="auto-style8" style="font-weight: 200; font-size: x-large">
                <asp:Button ID="btncheckout" runat="server" Font-Size="Large" Text="Click Here!" OnClick="btncheckout_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
