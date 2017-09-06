<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3-7การใช้งาน Cookies แบบมี Keys.aspx.cs" Inherits="PART1_ASP.NET._3_7การใช้งาน_Cookies_แบบมี_Keys" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="cmdCookiesNoKeys" runat="server" OnClick="cmdCookiesNoKeys_Click" Text="สร้าง Cookies แบบไม่มี Keys" /><br />
            <asp:Button ID="cmdCookiesWithKeys" runat="server" OnClick="cmdCookiesWithKeys_Click" Text="สร้าง Cookies แบบมี Keys" /><br /><br />
            <asp:Button ID="cmdReadCookies" runat="server" OnClick="cmdReadCookies_Click" Text="อ่านค่า Cookies" /> 
        </div>
    </form>
</body>
</html>
