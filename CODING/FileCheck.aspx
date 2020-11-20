<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FileCheck.aspx.cs" Inherits="FileCheck" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Panel ID="Panel1" runat="server" BorderColor="#66FFFF" BorderStyle="Solid" 
    Height="455px" Width="656px">
    <table style="width: 100%; height: 596px;">
        <tr>
            <td colspan="2" style="font-weight: 700; font-size: large; height: 45px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; File Check&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 24px">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="height: 24px">
            </td>
        </tr>
        <tr>
            <td style="height: 24px">
                Select FileName</td>
            <td style="height: 24px">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="height: 93px; font-weight: 700; color: #FF0066">
                Token Key:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid"></asp:TextBox>
                <br />
                FirstBlock<br />
                <br />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click"> Get first Block Token Key</asp:LinkButton>
            </td>
            <td style="height: 93px">
                <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" Height="59px" 
                    TextMode="MultiLine" Width="278px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="font-weight: 700; color: #FF0000" Text="View" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" 
                    style="font-weight: 700; color: #FF0000" Text="Download" 
                    onclick="Button2_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td style="height: 102px; color: #FF3399; font-weight: 700">
                Token Key:&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" Height="19px" 
                    Width="147px"></asp:TextBox>
                <br />
                SecondBlock<br />
                <br />
                <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click"> Get Second Block Token Key</asp:LinkButton>
                <br />
            </td>
            <td style="height: 102px">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="font-weight: 700; color: #FF0066; height: 43px">
                TokenKey:&nbsp;
                <asp:TextBox ID="TextBox5" runat="server" BorderStyle="Solid" Height="20px"></asp:TextBox>
                <br />
                ThirdBlock<br />
                <br />
                <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click"> Get Third Block Token Key</asp:LinkButton>
                <br />
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td style="height: 43px">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Panel>

</asp:Content>

