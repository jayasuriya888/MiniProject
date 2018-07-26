<%@ Page Title="" Language="C#" MasterPageFile="~/MasterForm.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Mini_Project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style27 {
        height: 40px;
        width: 200px;
    }
        .auto-style28 {
            height: 40px;
        }
        .auto-style29 {
            height: 39px;
            width: 200px;
        }
        .auto-style30 {
            height: 39px;
        }
        .auto-style8 {
            width: 74px;
            height: 40px;
        }
        .auto-style31 {
            height: 41px;
            width: 200px;
        }
        .auto-style32 {
            height: 41px;
        }
        .auto-style11 {
            width: 200px;
            text-align: center;
            height: 40px;
        }
        .auto-style10 {
            text-align: center;
            height: 40px;
        }
        .auto-style33 {
            width: 385px;
            height: 40px;
        }
        .auto-style34 {
            width: 588px;
            height: 40px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="border: medium solid #0000FF; font-size: large; font-family: Georgia; background-color: #FFFF00;" border="1">
    <tr>
        <td class="auto-style28" colspan="5" style="font-size: larger">VISITOR CHECK_IN</td>
    </tr>
    <tr>
        <td class="auto-style27">First Name</td>
        <td class="auto-style28" colspan="3">
            <asp:TextBox ID="txtfname" runat="server" Width="442px" Font-Names="Arial" Font-Size="Large"></asp:TextBox>
        </td>
        <td class="auto-style28" hidden="hidden">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname" Display="None" ErrorMessage="Enter the First Name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style27">Last Name</td>
        <td class="auto-style28" colspan="3">
            <asp:TextBox ID="txtlname" runat="server" Width="441px" Font-Names="Arial" Font-Size="Large"></asp:TextBox>
        </td>
        <td class="auto-style28" hidden="hidden">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlname" Display="None" ErrorMessage="Enter the Last Name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style27">Company</td>
        <td colspan="3" class="auto-style28">
            <asp:TextBox ID="txtcompany" runat="server" Width="442px" Font-Names="Arial" Font-Size="Large"></asp:TextBox>
        </td>
        <td hidden="hidden" class="auto-style28">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcompany" Display="None" ErrorMessage="Enter the Company"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style29">Visiting</td>
        <td colspan="3" class="auto-style30">
            <asp:TextBox ID="txtvisiting" runat="server" Width="439px" Font-Names="Arial" Font-Size="Large"></asp:TextBox>
        </td>
        <td hidden="hidden" class="auto-style30">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtvisiting" Display="None" ErrorMessage="Visiting can't be NULL"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style27">ID Type</td>
        <td class="auto-style34">
            <asp:TextBox ID="txtidtype" runat="server" Width="335px" Font-Names="Arial" Font-Size="Large"></asp:TextBox>
        </td>
        <td class="auto-style8">ID No</td>
        <td class="auto-style33">
            <asp:TextBox ID="txtidno" runat="server" Height="16px" Width="213px" Font-Names="Arial" Font-Size="Large"></asp:TextBox>
        </td>
        <td hidden="hidden" class="auto-style28">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtIDtype" Display="None" ErrorMessage="Enter the ID Type"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtIDNo" Display="None" ErrorMessage="Enter the ID No"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style31">Vehicle Number</td>
        <td class="auto-style32" colspan="3">
            <asp:TextBox ID="txtvechno" runat="server" Width="440px" Font-Names="Arial" Font-Size="Large"></asp:TextBox>
        </td>
        <td class="auto-style32" hidden="hidden">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtvechno" Display="None" ErrorMessage="Enter the Proper vehicle number Eg.XX00XX0000" ValidationExpression="^[A-Z]{2}[0-9]{2}[-][A-Z]{2}[0-9]{4}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style27">Conatact Number</td>
        <td colspan="3" class="auto-style28">
            <asp:TextBox ID="txtcontno" runat="server" Width="441px" Font-Names="Arial" Font-Size="Large"></asp:TextBox>
        </td>
        <td hidden="hidden" class="auto-style28">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcontno" Display="None" ErrorMessage="Enter the Contact No"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcontno" Display="None" ErrorMessage="Enter only 10 digits" ValidationExpression="^([6-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style27">Purpose Of Visit</td>
        <td colspan="3" class="auto-style28">
            <asp:TextBox ID="txtpurpose" runat="server" Width="439px" Font-Names="Arial" Font-Size="Large"></asp:TextBox>
        </td>
        <td hidden="hidden" class="auto-style28">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtpurpose" Display="None" ErrorMessage="Enter the Purpose Of Visit"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style27">Status</td>
        <td colspan="3" class="auto-style28">
            <asp:TextBox ID="txtstatus" runat="server" Enabled="False" Font-Size="Large" Width="426px">Active</asp:TextBox>
        </td>
        <td hidden="hidden" class="auto-style28"></td>
    </tr>
    <tr>
        <td class="auto-style11">
            <asp:Button ID="btncancel" runat="server" CausesValidation="False" Height="36px" Text="Cancel" Width="96px" OnClick="btncancel_Click" />
        </td>
        <td class="auto-style10" colspan="3">
            <asp:Button ID="btnsave" runat="server" Height="32px" Text="Save" Width="101px" OnClick="btnsave_Click" />
        </td>
        <td class="auto-style10" hidden="hidden"></td>
    </tr>
</table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#99FF66" BorderColor="#99FF66" BorderStyle="Outset" ForeColor="Red" HeaderText="Error!!!" />
    </asp:Content>
