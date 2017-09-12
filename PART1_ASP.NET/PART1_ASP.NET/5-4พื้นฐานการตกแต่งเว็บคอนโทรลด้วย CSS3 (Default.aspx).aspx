<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="5-4พื้นฐานการตกแต่งเว็บคอนโทรลด้วย CSS3 (Default.aspx).aspx.cs" Inherits="PART1_ASP.NET._5_4พื้นฐานการตกแต่งเว็บคอนโทรลด้วย_CSS3__Default_aspx_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/5-4CSS.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="body">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="txt">ข้อความจาก TextBox</asp:TextBox><br />
            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="lbl">ข้อความจาก Label</asp:Label><br />
            ข้อความจากอิลิเมนต์ Body
        </div>
    </form>
</body>
</html>
