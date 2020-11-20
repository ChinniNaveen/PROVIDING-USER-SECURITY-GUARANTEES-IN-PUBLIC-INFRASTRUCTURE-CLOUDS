<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FileVerification.aspx.cs" Inherits="FileVerification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table align="center" style="width: 65%; height: 299px; font-weight: 700">
        <tr>
            <td colspan="7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span style="color: #800000">
                <strong style="font-size: large; font-style: italic">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Upload Status&nbsp;</strong></span></td>
        </tr>
        <tr>
            <td style="font-weight: 700">
                FileName&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td style="font-weight: 700">
                &nbsp;</td>
            <td style="font-weight: 700">
                &nbsp;</td>
            <td style="font-weight: 700">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="Maroon" 
                    style="font-weight: 700" Text="Label"></asp:Label>
            </td>
            <td style="font-weight: 700; font-style: italic">
                &nbsp;</td>
            <td style="font-weight: 700">
                Verification Allow/Block</td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                First Block&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="84px" Width="199px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Allow</asp:ListItem>
                    <asp:ListItem>Block</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 30px">
                Middle Block&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td style="height: 30px">
                <asp:TextBox ID="TextBox2" runat="server" Height="77px" Width="197px"></asp:TextBox>
            </td>
            <td style="height: 30px">
                &nbsp;</td>
            <td style="height: 30px">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Allow</asp:ListItem>
                    <asp:ListItem>Block</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                Last Block</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="74px" Width="194px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>Allow</asp:ListItem>
                    <asp:ListItem>Block</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Button ID="Button1" runat="server" BorderStyle="Solid" Text="Back" />
            </td>
            <td colspan="3">
                <asp:Button ID="Button2" runat="server" BorderStyle="Solid" Text="Finish" 
                    onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

