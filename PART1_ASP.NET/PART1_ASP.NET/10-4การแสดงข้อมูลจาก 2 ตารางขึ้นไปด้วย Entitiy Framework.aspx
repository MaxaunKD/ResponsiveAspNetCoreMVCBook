<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="10-4การแสดงข้อมูลจาก 2 ตารางขึ้นไปด้วย Entitiy Framework.aspx.cs" Inherits="PART1_ASP.NET._10__4การแสดงข้อมูลจาก_2_ตารางขึ้นไปด้วย_Entitiy_Framework" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>การแสดงข้อมูลจาก 2 ตารางขึ้นไปด้วย Entitiy Framework</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gv" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="รหัสสินค้า" />
                    <asp:BoundField DataField="ProductName" HeaderText="ชื่อสินค้า" />
                    <asp:BoundField DataField="CategoryName" HeaderText="ประเภทสินค้า" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
