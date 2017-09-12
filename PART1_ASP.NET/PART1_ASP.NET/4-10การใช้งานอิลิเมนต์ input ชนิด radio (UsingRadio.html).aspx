<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4-10การใช้งานอิลิเมนต์ input ชนิด radio (UsingRadio.html).aspx.cs" Inherits="PART1_ASP.NET._4_10การใช้งานอิลิเมนต์_input_ชนิด_radio__UsingRadio_html_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>การใช้งานอิลิเมนต์ input ชนิด radio</title>
    <script lang="javascript" type="text/javascript">
        function CheckLang() {
            var frm = document.forms[0];
            for (var i = 0; i < frm.Lang.length; i++) {
                if (frm.Lang[i].checked) {
                    break;
                }
            }
            alert("ภาษาที่คุณสนใจ คือ : " + frm.Lang[i].value);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                กรุณาเลือกภาษาที่สนใจเพียง 1 ภาษา :<br />
                <input type="radio" name="Lang" value="Visual Basic 2015" checked="checked" />Visual Basic 2015
                <input type="radio" name="Lang" value="Visual C# 2015" />Visual C# 2015<br />
                <input type="button" id="button1" value="ตรวจสอบ" onclick="CheckLang()" />
            </p>
        </div>
    </form>
</body>
</html>
