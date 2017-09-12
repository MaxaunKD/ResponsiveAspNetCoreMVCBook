<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4-7การกำหนดค่าในตารางของภาษา HTML (WorkingWithTable.html).aspx.cs" Inherits="PART1_ASP.NET._4_7การกำหนดค่าในตารางของภาษา_HTML__WorkingWithTable_html_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>การกำหนดค่าในตารางของภาษา HTML</title>
    <script lang="javascript" type="text/javascript">
        function AssignTable() {
            var tbl = document.getElementById("table1");
            tbl.rows[0].cells[0].innerHTML = "แถวที่ 1 คอลัมน์ที่ 1";
            tbl.rows[0].cells[1].innerHTML = "แถวที่ 1 คอลัมน์ที่ 2";
            tbl.rows[0].cells[2].innerHTML = "แถวที่ 1 คอลัมน์ที่ 3";

            tbl.rows[1].cells[0].innerHTML = "แถวที่ 2 คอลัมน์ที่ 1";
            tbl.rows[1].cells[1].innerHTML = "แถวที่ 2 คอลัมน์ที่ 2";
            tbl.rows[1].cells[2].innerHTML = "แถวที่ 2 คอลัมน์ที่ 3";

            tbl.rows[2].cells[0].innerHTML = "แถวที่ 3 คอลัมน์ที่ 1";
            tbl.rows[2].cells[1].innerHTML = "แถวที่ 3 คอลัมน์ที่ 2";
            tbl.rows[2].cells[2].innerHTML = "แถวที่ 3 คอลัมน์ที่ 3";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="button" id="cmdAssign" value="กำหนดค่า" onclick="AssignTable();" />
            <table id="table1" border="1" style="width: 48%";>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
