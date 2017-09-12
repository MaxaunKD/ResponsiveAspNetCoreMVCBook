<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4-14การตรวจสอบรายการที่ถูกเลือกในอิลิเมนต์ select (WorkingWithSelect.html).aspx.cs" Inherits="PART1_ASP.NET._4_14การตรวจสอบรายการที่ถูกเลือกในอิลิเมนต์_select__WorkingWithSelect_html_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>การตรวจสอบรายการที่ถูกเลือกในอิลิเมนต์ select</title>
    <script lang="javascript" type="text/javascript">
        function CheckSelect() {
            var lang = document.getElementById("seLang").value;
            document.write(lang);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <select id="seLang" onchange="CheckSelect()">
                <option value="-">เลือกภาษาที่สนใจ></option>
                <option value="vb">Visual Basic 2015</option>
                <option value="vc">Visual C# 2015</option>
                <option value="asp">ASP.NET 4.6</option>
            </select>
        </div>
    </form>
</body>
</html>
