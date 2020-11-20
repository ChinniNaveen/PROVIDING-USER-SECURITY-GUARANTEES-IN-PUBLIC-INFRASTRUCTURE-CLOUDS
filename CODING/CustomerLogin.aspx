<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CustomerLogin.aspx.cs" Inherits="CustomerLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
          <table align="center" style="width: 68%; height: 79px">
    <tr>
        <td colspan="2" style="color: #FF0066; font-weight: 700">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span style="text-decoration: underline; font-size: large">&nbsp;UserLogin</span></td>
    </tr>
    <tr>
        <td>
            Userid</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Password</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BorderStyle="Ridge" 
                style="color: #FF0000; font-weight: 700" Text="Registration" 
                onclick="Button1_Click" />
            &nbsp;</td>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BorderStyle="Ridge" 
                style="color: #FF3300; font-weight: 700" Text="Login" 
                onclick="Button2_Click" />
            &nbsp;</td>
    </tr>
</table>

</asp:Content>

