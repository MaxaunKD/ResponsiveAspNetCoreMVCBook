<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3-6พื้นฐานการเก็บข้อมูลในเครื่องผู้ใช้งานด้วยคลาส Cookies.aspx.cs" Inherits="PART1_ASP.NET._3_6พื้นฐานการเก็บข้อมูลในเครื่องผู้ใช้งานด้วยคลาส_Cookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="cmdAdd" OnClick="cmdAdd_Click" runat="server" Text="Add" />
            <asp:Button ID="cmdRead" OnClick="cmdRead_Click" runat="server" Text="Read" />
        </div>
    </form>
</body>
</html>
