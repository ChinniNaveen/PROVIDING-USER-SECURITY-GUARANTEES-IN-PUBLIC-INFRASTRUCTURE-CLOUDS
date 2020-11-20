<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Userdetails.aspx.cs" Inherits="Userdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width: 56%; height: 93px">
        <tr>
            <td style="color: #FF0000">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="color: #FF6600; font-weight: 700">
                <asp:Button ID="Button1" runat="server" BorderStyle="Ridge" 
                    onclick="Button1_Click" style="color: #FF6600; font-weight: 700" 
                    Text="ViewUserName" />
            </td>
            <td style="color: #FF0000">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" BorderStyle="Groove" 
                    style="color: #FF6600; font-weight: 700" Text="Logout" />
            </td>
        </tr>
        <tr>
            <td style="color: #FF0000">
                SelectUserName</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="color: #FF0000; text-decoration: underline">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" ForeColor="#FF0066" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
            <table style="width: 100%; height: 199px;">
                        <tr>
                            <td>
                                UserId&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                UserName&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                MobileNumber&nbsp;&nbsp; </td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                EmailId&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 23px">
                                Country&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td style="height: 23px">
                                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </table>
   



                </td>
            <td style="color: #FF0000">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px">
                &nbsp;</td>
            <td style="height: 26px">
            </td>
            <td style="height: 26px">
            </td>
            <td style="height: 26px">
            </td>
            <td style="height: 26px">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

