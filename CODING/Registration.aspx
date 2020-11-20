<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 79%; color: #0000FF; font-weight: 700; height: 225px;" 
    align="center">
    <tr>
        <td colspan="2" style="text-align: center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #0000FF; font-size: large; text-decoration: underline"><strong>UserRegistration</strong></span></td>
    </tr>
    <tr>
        <td>
            UserId</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Name</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Password</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            
        </td>
    </tr>
    <tr>
        <td>
            Conform password</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Must match" ForeColor="Red">Must match</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>
            Contact number</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Not valid number" ForeColor="Red" ValidationExpression="[0-9]{10}">Not valid number</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            Address</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            EmailId</td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server" OnTextChanged="TextBox7_TextChanged"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
              runat="server" ErrorMessage="Please Enter Valid Email ID"
                  ValidationGroup="vgSubmit" ControlToValidate="TextBox7"
                  CssClass="requiredFieldValidateStyle"
                  ForeColor="Red"
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                  </asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            Gender</td>
        <td>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td>
            Country</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>Chaina</asp:ListItem>
                <asp:ListItem>Japan</asp:ListItem>
                <asp:ListItem>USA</asp:ListItem>
                <asp:ListItem>UK</asp:ListItem>
                <asp:ListItem>Pakistan</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BorderStyle="Groove" 
                onclick="Button1_Click" style="font-style: italic; font-weight: 700" 
                Text="Submit" />
            &nbsp;</td>
        <td>
            <asp:Button ID="Button2" runat="server" BorderStyle="Groove" 
                style="font-weight: 700" Text="Login" onclick="Button2_Click" />
        </td>
    </tr>
</table>
</asp:Content>

