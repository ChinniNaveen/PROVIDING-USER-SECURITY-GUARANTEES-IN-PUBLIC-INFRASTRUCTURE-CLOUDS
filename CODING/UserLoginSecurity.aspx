<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserLoginSecurity.aspx.cs" Inherits="UserLoginSecurity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table align="center" style="width: 63%; height: 265px">
        <tr>
            <td colspan="2" style="text-align: center; background-color: #3399FF">
                <asp:Button ID="Button2" runat="server" style="font-weight: 700" 
                    Text="UserHome" />
            </td>
            <td colspan="2" 
                style="width: 35px; text-align: center; background-color: #3399FF">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button3" runat="server" style="font-weight: 700; text-align: center" 
                    Text="FileUpload" />
                &nbsp;</td>
            <td colspan="2" style="text-align: center; background-color: #3399FF">
                <asp:Button ID="Button4" runat="server" style="font-weight: 700; margin-left: 35px;" 
                    Text="FileProcess" />
            </td>
            <td style="text-align: center; background-color: #3399FF">
                <asp:Button ID="Button5" runat="server" style="font-weight: 700" 
                    Text="Myalerts" />
            </td>
            <td style="text-align: center; background-color: #3399FF">
                <asp:Button ID="Button6" runat="server" style="font-weight: 700" 
                    Text="LogOut" />
            </td>
        </tr>
    <tr>
        <td colspan="8">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span style="color: #FF3399; font-size: medium"><em><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            User Login Security</strong></em></span>&nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td colspan="7">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td colspan="7">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="font-family: 'Bell MT'; font-weight: 700">
            Security Key</td>
        <td colspan="2">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td colspan="2">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
        <td>
            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                style="color: #FF0066; font-weight: 700">Get Secret Key</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td colspan="8" style="font-family: 'Bell MT'; font-weight: 700">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BorderStyle="Inset" 
                onclick="Button1_Click" style="color: #FF0000" Text="Submit" Width="99px" />
            &nbsp;</td>
    </tr>
</table>

</asp:Content>

