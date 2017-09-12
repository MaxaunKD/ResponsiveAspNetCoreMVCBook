<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4-8พื้นฐานการปรับแต่งเอตทริบิวต์ของอิลิเมนต์ HTML (JSWithDOM.html).aspx.cs" Inherits="PART1_ASP.NET._4_8พื้นฐานการปรับแต่งเอตทริบิวต์ของอิลิเมนต์_HTML__JSWithDOM_html_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>พื้นฐานการปรับแต่งเอตทริบิวต์ของอิลิเมนต์ HTML</title>
    <script lang="javascript" type="text/javascript">
        function ChangeBackColor() {
            document.body.style.backgroundColor = "red";
            document.getElementById("Text1").style.color = "pink";
            document.getElementById("Text2").style.color = "blue";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p><input id="Text1" type="text" /></p>
            <div id="div1">ข้อความใน div</div>
            <input id="Button1" type="button" 
                   value="button" onclick="ChangeBackColor()" />
        </div>
    </form>
</body>
</html>
