<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4-7การส่งต่อข้อมูลไปยังอิลิเมนต์อื่น (UsingInput.html).aspx.cs" Inherits="PART1_ASP.NET._4_7การส่งต่อข้อมูลไปยังอิลิเมนต์อื่น__UsingInput_html_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>การส่งต่อข้อมูลไปยังอิลิเมนต์อื่น</title>
    <script lang="javascript" type="text/javascript">
        function CallInput() {
            var firstname = document.getElementById("FirstName").value;
            var lastname = document.getElementById("LastName").value;
            document.getElementById("FullName").value = firstname + " " + lastname;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="text" id="FirstName" /><br />
            <input type="text" id="LastName" /><br />
            <input type="button" value="ตกลง" onclick="CallInput()" />
            <input type="text" id="FullName" />
        </div>
    </form>
</body>
</html>
