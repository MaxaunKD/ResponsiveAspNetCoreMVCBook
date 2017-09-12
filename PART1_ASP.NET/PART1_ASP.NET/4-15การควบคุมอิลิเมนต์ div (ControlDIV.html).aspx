<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4-15การควบคุมอิลิเมนต์ div (ControlDIV.html).aspx.cs" Inherits="PART1_ASP.NET._4_15การควบคุมอิลิเมนต์_div__ControlDIV_html_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>การควบคุมอิลิเมนต์ div</title>
    <script lang="javascript" type="text/javascript">
        function ControlDIV() {
            if (document.getElementById("div1").style.display == "none") {
                document.getElementById("div1").style.display = "block";
                document.getElementById("cmdControl").value = "-";
            }
            else {
                document.getElementById("div1").style.display = "none";
                document.getElementById("cmdControl").value = "+";
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <input type="button" id="cmdControl" value="-" onclick="ControlDIV();" />
        <div id="div1">
            <input type="text" id="Text1" /><br />
            <input type="button" id="Button1" value="button" />
        </div>
    </form>
</body>
</html>
