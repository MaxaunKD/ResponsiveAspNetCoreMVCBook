<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4-16การใช้งานฟังก์ชัน setTimeout() (SetTimeout.html).aspx.cs" Inherits="PART1_ASP.NET._4_16การใช้งานฟังก์ชัน_setTimeout____SetTimeout_html_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>การใช้งานฟังก์ชัน setTimeout() </title>
    <script lang="javascript" type="text/javascript">
        function HideP1() {
            document.getElementById("p1").style.display = "none";
        }
        setTimeout("HideP1();", 3000);
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p id="p1">
                <input type="text" id="Text1" />
                <input type="button" id="Button1" value="button" />
            </p>
        </div>
    </form>
</body>
</html>
