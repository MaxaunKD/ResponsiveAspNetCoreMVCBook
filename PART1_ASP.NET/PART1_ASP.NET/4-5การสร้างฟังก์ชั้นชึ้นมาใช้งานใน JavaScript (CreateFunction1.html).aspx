<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4-5การสร้างฟังก์ชั้นชึ้นมาใช้งานใน JavaScript (CreateFunction1.html).aspx.cs" Inherits="PART1_ASP.NET._4_5การสร้างฟังก์ชั้นชึ้นมาใช้งานใน_JavaScript__CreateFunction1_html_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>การสร้างฟังก์ชันขึ้นมาใช้งาน</title>
    <script lang="javascript" type="text/javascript">
        function Hello() {
            window.alert("สวัสดีครับ !!!")
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <input type="button" value="Click here" onclick="Hello()" />
        <input type="button" value="Click here" onclick="javascript:Hello();" />
        <%--ได้ทั้ง 2 แบบ--%>
    </form>
</body>
</html>
