<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3-9พื้นฐานการฝช้งานตัวแปรแบบ Session.aspx.cs" Inherits="PART1_ASP.NET._3_9พื้นฐานการฝช้งานตัวแปรแบบ_Session" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="cmdClearByName" runat="server" OnClick="cmdClearByName_Click" Text="ล้างค่าแบบระบุชื่อ" />
            <asp:Button ID="cmdClearAll" runat="server"  OnClick="cmdClearAll_Click" Text="ล้างทังหมด" />
        </div>
    </form>
</body>
</html>
