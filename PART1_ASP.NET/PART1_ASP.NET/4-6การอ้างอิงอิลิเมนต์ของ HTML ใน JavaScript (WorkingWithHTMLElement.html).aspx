<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4-6การอ้างอิงอิลิเมนต์ของ HTML ใน JavaScript (WorkingWithHTMLElement.html).aspx.cs" Inherits="PART1_ASP.NET._4_6การอ้างอิงอิลิเมนต์ของ_HTML_ใน_JavaScript__WorkingWithHTMLElement_html_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>การอ้างอิงอิลิเมนต์ของ HTML ใน JavaScript</title>
    <script lang="javascript" type="text/javascript">
        function InitialDataById() {
            var t1 = document.getElementById("txt1");
            t1.value = "กำหนดข้อความที่ 1 ด้วย Id";
            var t2 = document.getElementById("txt2");
            t2.value = "กำหนดข้อความที่ 2 ด้วย Id";
        }
    </script>
</head>
<body onload="InitialDataById();">
    <form id="form1" runat="server">
        <div>
            <input type="text" id="txt1" /><br />
            <input type="text" id="txt2" /><br />
        </div>
    </form>
</body>
</html>
