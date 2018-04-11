<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p style="height: 236px; width: 911px">
        <asp:Label ID="Label4" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
        </p>
        <p>
        <asp:Label ID="Label5" runat="server" ForeColor="#CC0000" Text="you are not an admin.." Visible="False"></asp:Label>
        </p>
    </form>
</body>
</html>
