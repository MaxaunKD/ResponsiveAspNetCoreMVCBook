<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="10-3เชียนโค้ดใช้งาน Entity Framework แบบกำหนดคอลัมน์เอง.aspx.cs" Inherits="PART1_ASP.NET._10_3เชียนโค้ดใช้งาน_Entity_Framework_แบบกำหนดคอลัมน์เอง" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gvCustomers" runat="server" AllowPaging="true" OnPageIndexChanging="gvCustomers_PageIndexChanging">

            </asp:GridView>
        </div>
    </form>
</body>
</html>
