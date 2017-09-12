<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4-11การแสดงข้อความยืนยันก่อน Submit ฟอร์ม (ConfirmToSubmit.html).aspx.cs" Inherits="PART1_ASP.NET._4_11การแสดงข้อความยืนยันก่อน_Submit_ฟอร์ม__ConfirmToSubmit_html_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>การแสดงข้อความยืนยันก่อน Submit ฟอร์ม</title>
    <script lang="javascript" type="text/javascript">
        function ConfirmSubmit() {
            if (confirm("คุณต้องการยืนยันข้อมูลปัจจุบัน ใช่หรือไม่?") == true) {
                return true;
            }
            else {
                return false;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" onsubmit="ConfirmSubmit()">
        <div>
            ชื่อ-สกุล :<input type="text" name="textFullName" /><br />
            <input type="submit" name="Submit1" value="submit" />
        </div>
    </form>
</body>
</html>
