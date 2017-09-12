<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="6-4การตกแต่งให้กับเว็บคอลโทรล Button.aspx.cs" Inherits="PART1_ASP.NET.bootstrap._6_4การตกแต่งให้กับเว็บคอลโทรล_Button" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>การตกแต่งให้กับเว็บคอลโทรล Button</title>
    <%--<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap/js/jquery-3.2.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>--%>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <asp:Button ID="Button2" runat="server" class="btn btn-default" Text="btn-default" />
            <asp:Button ID="Button3" runat="server" class="btn disabled" Text="Button" />
            <asp:Button ID="Button4" runat="server" class="btn btn-success" Text="btn-success" /><hr />
        </div>
    </form>
</body>
</html>
