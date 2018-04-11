<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 317px;
            width: 945px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Register Page"></asp:Label>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="nametxt" runat="server" Height="25px" style="margin-left: 31px; margin-bottom: 0px" Width="206px"></asp:TextBox>
        </p>
        <p>
            Email-Id&nbsp;&nbsp;
            <asp:TextBox ID="emailtxt" runat="server" Height="25px" style="margin-left: 31px; margin-bottom: 0px" Width="206px"></asp:TextBox>
        </p>
        <p>
            Password
            <asp:TextBox ID="passtxt" runat="server" Height="25px" style="margin-left: 31px; margin-bottom: 0px" TextMode="Password" Width="206px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
&nbsp;<asp:Button ID="Button1" runat="server" Height="41px" OnClick="Button1_Click" Text="Register" Width="116px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" ForeColor="#006600" Text="insertion complete" Visible="False"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
