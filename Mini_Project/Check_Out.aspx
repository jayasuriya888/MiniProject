<%@ Page Title="" Language="C#" MasterPageFile="~/MasterForm.Master" AutoEventWireup="true" CodeBehind="Check_Out.aspx.cs" Inherits="Mini_Project.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        width: 100%;
        border: 3px solid #FF0000;
        background-color: #00FF00;
    }
    .auto-style7 {
        text-align: center;
    }
    .auto-style8 {
        text-align: center;
        width: 143px;
    }
    .auto-style9 {
        font-size: large;
    }
        .auto-style10 {
            text-align: center;
            width: 612px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="4" cellspacing="4" class="auto-style6">
    <tr>
        <td class="auto-style7" colspan="4" style="font-size: x-large; font-family: Verdana, Geneva, Tahoma, sans-serif">Check Out</td>
    </tr>
    <tr>
        <td class="auto-style8" style="font-size: x-large; font-family: Verdana, Geneva, Tahoma, sans-serif">Visitors In</td>
        <td class="auto-style7" style="font-size: x-large; font-family: Verdana, Geneva, Tahoma, sans-serif">
            <asp:TextBox ID="txtvisitors" runat="server" Font-Size="Large" Width="273px"></asp:TextBox>
        </td>
        <td class="auto-style7" style="font-size: x-large; font-family: Verdana, Geneva, Tahoma, sans-serif">
            <asp:Button ID="btnID" runat="server" CssClass="auto-style9" Text="Search by ID" OnClick="btnID_Click" />
        </td>
        <td class="auto-style10" style="font-size: x-large; font-family: Verdana, Geneva, Tahoma, sans-serif">
            <asp:Button ID="btnname" runat="server" CssClass="auto-style9" Text="Search by Name" OnClick="btnname_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style7" colspan="4" style="font-size: x-large; font-family: Verdana, Geneva, Tahoma, sans-serif">
            <asp:GridView ID="GridView1" runat="server" >
                <Columns>
                    <asp:TemplateField HeaderText ="Sign Out">
                    <ItemTemplate>
                        <asp:Button ID="b1" runat="server" Text="Click Here To Sign Out ==>>" OnClick="b1_Click" />
                    </ItemTemplate>
                </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>
