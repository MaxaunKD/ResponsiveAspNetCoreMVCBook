<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3-8การทำคำทักทายผู้เข้าเยี่ยมชมเว็บเพจ.aspx.cs" Inherits="PART1_ASP.NET._3_8การทำคำทักทายผู้เข้าเยี่ยมชมเว็บเพจ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblHello" runat="server" Text="Label"></asp:Label>
            <br /><br /><br />
            <asp:Label ID="Label1" runat="server" Text="ชื่อ :"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" />
            <asp:Button ID="cmdSave" runat="server" OnClick="cmdSave_Click" Text="บันทึก" />
        </div>
    </form>
</body>
</html>
