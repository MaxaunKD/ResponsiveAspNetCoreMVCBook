<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3-5การกำหนดให้เว็บคอนโทรลมีการส่งค่ากลับ.aspx.cs" Inherits="PART1_ASP.NET._3_5การกำหนดให้เว็บคอนโทรลมีการส่งค่ากลับ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Width="135px"></asp:Label><br /><br />
            <asp:ListBox ID="ListBox1" runat="server" 
                AutoPostBack="true" Height="117px" Width="136px">
                <asp:ListItem>VB 2015</asp:ListItem>
                <asp:ListItem>VC# 2015</asp:ListItem>
                <asp:ListItem>ASP.NET</asp:ListItem>
                <asp:ListItem>LINQ</asp:ListItem>
                <asp:ListItem>WPF</asp:ListItem>
                <asp:ListItem>WCF</asp:ListItem>
            </asp:ListBox>
        </div>
    </form>
</body>
</html>
