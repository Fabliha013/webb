<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginpage.aspx.cs" Inherits="loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 90px;
            width: 937px;
        }
    </style>
</head>
<body style="height: 127px; width: 932px">
    <form id="passtxt" runat="server">
    &nbsp;
        <asp:Label ID="Label4" runat="server" Text="Login Page"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">don&#39;t have an account?..register now</asp:HyperLink>
        <br />
        <br />
        <asp:Button ID="adminlogin" runat="server" OnClick="adminlogin_Click" Text="login as admin" />
        <br />
        Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Height="26px" style="margin-left: 11px; margin-top: 8px; margin-bottom: 0px" Width="280px"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Height="26px" style="margin-left: 11px; margin-top: 8px; margin-bottom: 0px" Width="280px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="47px" OnClick="Button1_Click" style="margin-left: 4px; margin-right: 0px" Text="login" Width="132px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" ForeColor="#CC0000" Text="Your name or password is invalid!" Visible="False"></asp:Label>
        <br />
    </form>
</body>
</html>
