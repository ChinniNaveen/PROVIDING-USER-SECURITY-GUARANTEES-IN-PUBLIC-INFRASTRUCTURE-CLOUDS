<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FileUpload.aspx.cs" Inherits="FileUpload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table align="center" style="width: 63%; height: 265px">
        <tr>
            <td colspan="2" style="text-align: center; background-color: #3399FF">
                <asp:Button ID="Button2" runat="server" style="font-weight: 700" 
                    Text="UserHome" Width="118px" />
            </td>
            <td style="background-color: #3399FF">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button3" 
                    runat="server" style="font-weight: 700; text-align: center" 
                    Text="FileUpload" Width="121px" />
            &nbsp;
            </td>
            <td style="background-color: #3399FF">
                <asp:Button ID="Button4" runat="server" style="font-weight: 700; margin-left: 0px;" 
                    Text="FileProcess" onclick="Button4_Click" />
            </td>
            <td colspan="2" style="text-align: center; background-color: #3399FF">
                &nbsp;</td>
            <td style="text-align: center; background-color: #3399FF">
                <asp:Button ID="Button5" runat="server" style="font-weight: 700" 
                    Text="FileDownload" onclick="Button5_Click" />
            </td>
            <td style="text-align: center; background-color: #3399FF">
                <asp:Button ID="Button6" runat="server" style="font-weight: 700" 
                    Text="LogOut" />
            </td>
        </tr>
        <tr>
            <td colspan="8">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span style="color: #FF3399; font-size: medium"><em style="font-weight: 700">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                File Upload</em></span></td>
        </tr>
        <tr>
            <td>
                UserId</td>
            <td colspan="7">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Subject</td>
            <td colspan="7">
                <asp:TextBox ID="TextBox2" runat="server" Height="78px" Width="264px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Bell MT'; font-weight: 700">
                ChooseFile</td>
            <td colspan="2">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Bell MT'; font-weight: 700">
                Date</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox3" runat="server" Height="31px" Width="141px"></asp:TextBox>
            </td>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="font-family: 'Bell MT'; font-weight: 700">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button7" runat="server" 
                    BorderStyle="Ridge" style="color: #FF0000" Text="Back" Width="61px" />
            </td>
            <td colspan="4" style="font-family: 'Bell MT'; font-weight: 700">
                <asp:Button ID="Button1" runat="server" BorderStyle="Inset" 
                onclick="Button1_Click" style="color: #FF0000" Text="Submit" Width="99px" />
            </td>
        </tr>
    </table>

</asp:Content>

