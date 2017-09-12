<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4-13การ Set Focus ให้กับอิลิเมนต์ (SetFocus.html).aspx.cs" Inherits="PART1_ASP.NET._4_13การ_Set_Focus_ให้กับอิลิเมนต์__SetFocus_html_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>4-13การ Set Focus ให้กับอิลิเมนต์</title>
    <script lang="javascript" type="text/javascript" >
        function SetFocus(Index) {
            if (document.forms.length > 0) {
                document.forms[0][Index].focus();
            }
        }
    </script>
</head>
<body onload="SetFocus(4)">
    <form id="form1" runat="server">
        <div>
            <input type="text" typeof="text1" /><br />
            <input type="text" typeof="text2" /><br />
            <input type="text" typeof="text3" /><br />
            <input type="text" typeof="text4" /><br />
            <input type="text" typeof="text5" />
        </div>
    </form>
</body>
</html>
