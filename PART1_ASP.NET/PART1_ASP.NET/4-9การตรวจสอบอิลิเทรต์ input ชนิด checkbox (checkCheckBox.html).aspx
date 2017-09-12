<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4-9การตรวจสอบอิลิเทรต์ input ชนิด checkbox (checkCheckBox.html).aspx.cs" Inherits="PART1_ASP.NET._4_9การตรวจสอบอิลิเทรต์_input_ชนิด_checkbox__checkCheckBox_html_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>การตรวจสอบอิลิเทรต์ input ชนิด checkbox</title>
    <script lang="javascript" type="text/javascript">
        function checkCheckBox() {
            if (document.forms[0]["chkVB"].checked == false) {
                alert("กรุณาเลือกตัวเลือก VB ด้วยครับ !!!");
                return false;
            }
            if (document.forms[0]["chkCS"].checked == false) {
                alert("กรุณาเลือก cs ด้วยครับ");
                return false;
            }
            document.form1.submti();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" onsubmit="checkCheckBox()">
        <div>
            VB :<input type="checkbox" id="chkVB" name="chkVB" value="VisualBasic2015" /><br />
            CS :<input type="checkbox" id="chkCS" name="chkCS" value="VisualC#2015" /><br />
            <input type="submit" name="cmdSubmti" value="Submit" />
        </div>
    </form>
</body>
</html>
