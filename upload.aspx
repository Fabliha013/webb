<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upload.aspx.cs" Inherits="upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnupload" runat="server" OnClick="btnupload_Click" Text="Upload" />
&nbsp;<p>
            <asp:Label ID="message" runat="server"  Font-Bold="True"></asp:Label>
        </p>
    </form>
</body>
</html>
