<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserFileProcess.aspx.cs" Inherits="UserFileProcess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table align="center" style="width: 87%; height: 176px; text-align: center">
        <tr>
            <td colspan="2" style="font-weight: 700; color: #0000FF; font-size: medium">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UserFileProcess&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 712px">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 712px">
                <asp:Panel ID="Panel4" runat="server" BorderStyle="Double" 
                    style="color: #CC0000; font-weight: 700">
                    <table style="width: 100%; height: 50px">
                        <tr>
                            <td>
                                <asp:RadioButtonList ID="RadioButtonList9" runat="server">
                                    <asp:ListItem>Update</asp:ListItem>
                                    <asp:ListItem>Delete</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td colspan="2">
                                &nbsp;</td>
                            <td style="width: 268435456px; font-style: italic; font-weight: 700;">
                                &nbsp;<asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click1">Get first block token key</asp:LinkButton>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:TextBox ID="TextBox7" runat="server" Height="49px" 
                Width="286px"></asp:TextBox>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="TextBox8" runat="server" Height="25px" 
                Width="146px"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Buttons" runat="server" onclick="Buttons_Click" Text="Button" />
                                &nbsp;
                                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 712px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 712px">
                <asp:Panel ID="Panel2" runat="server" BorderColor="#CC0000" BorderStyle="Solid" 
                    style="font-weight: 700">
                    <table style="width: 100%; height: 50px">
                        <tr>
                            <td>
                                <asp:RadioButtonList ID="RadioButtonList5" runat="server">
                                    <asp:ListItem>Update</asp:ListItem>
                                    <asp:ListItem>Delete</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td colspan="2">
                                &nbsp;</td>
                            <td style="width: 268435456px">
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" 
                style="text-align: right; font-style: italic; font-weight: 700" onclick="LinkButton2_Click">Get Second block token key</asp:LinkButton>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:TextBox ID="TextBox3" runat="server" Height="49px" 
                Width="286px"></asp:TextBox>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="TextBox4" runat="server" Height="25px" 
                Width="146px"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" 
                BorderStyle="Solid" ForeColor="#0066FF" Text="Submit" onclick="Button2_Click" />
                                &nbsp;
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 712px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 712px">
                <asp:Panel ID="Panel3" runat="server" BorderStyle="Solid" 
                    style="color: #CC0000; font-weight: 700">
                    <table style="width: 100%; height: 50px">
                        <tr>
                            <td style="height: 42px">
                                <asp:RadioButtonList ID="RadioButtonList7" runat="server">
                                    <asp:ListItem>Update</asp:ListItem>
                                    <asp:ListItem>Delete</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td colspan="2" style="height: 42px">
                                &nbsp;</td>
                            <td style="height: 42px">
                                &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" 
                style="text-align: right; font-style: italic; font-weight: 700" onclick="LinkButton3_Click">Get Third block token key</asp:LinkButton>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:TextBox ID="TextBox5" runat="server" Height="67px" 
                Width="286px"></asp:TextBox>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="TextBox6" runat="server" Height="25px" 
                Width="146px"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button3" runat="server" 
                BorderStyle="Solid" ForeColor="#0066FF" Text="Submit" onclick="Button3_Click" />
                                &nbsp;<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

