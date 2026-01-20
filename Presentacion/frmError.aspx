<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmError.aspx.cs" Inherits="frmError" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="30pt" 
            Text="No puede acceder a esta url"></asp:Label>
        <br />
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/frmLogin.aspx">Login</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
