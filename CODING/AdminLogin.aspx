<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
   <asp:Panel ID="Panel1" align="center" runat="server" BorderColor="Blue" BorderStyle="Groove" 
        GroupingText="AdminLogin" Height="136px" Width="310px" 
        style="text-align: center">
       <table style="width: 100%; font-size: small;">
           <tr>
               <td>
                   UserName</td>
               <td>
                   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                       ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td>
                   Password</td>
               <td>
                   <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                       ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td colspan="2">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                       Width="75px" />
                   &nbsp;&nbsp; &nbsp;</td>
           </tr>
       </table>

    </asp:Panel>

    
    </div>

</asp:Content>

