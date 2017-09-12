<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4-12พื้นฐานการตรวจสอบฟอร์มของ HTML (SimpleCheckForm.html).aspx.cs" Inherits="PART1_ASP.NET._4_12พื้นฐานการตรวจสอบฟอร์มของ_HTML__SimpleCheckForm_html_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>พื้นฐานการตรวจสอบฟอร์มของ HTML</title>
    <script lang="javascript" type="text/javascript" >
        function ValidForm(frm) {
            for (var i = 0; i < frm.elements.length; i++) {
                if (frm.elements[i].type == "text") {
                    if (frm.elements[i].value == "") {
                        alert("กรุณาป้อนข้อมูลให้ครบถ้วนก่อนค่ะ");
                        return false;
                    } 
                }
            }
            return true;
        }
    </script>
</head>
<body>
                                      <%--ไม่ใส่ return ก็ได้--%>
    <form id="form1" runat="server" onsubmit="return ValidForm(this)"> 
        <div>
            แบบฟอร์มสมัครสมาชิก : (ป้อนข้อมูลให้ครบถ้วนทุกช่อง)<br />
            ชื่อ-นามสกุล :<input type="text" name="FullName" /><br />
            ที่อยู่ :<input type="text" name="Address" /><br />
            เบอร์โทรศัพท์ :<input type="text" name="Telephone" /><br />
            <input type="submit" id="Submit" value="บันทึก" />
        </div>
    </form>
</body>
</html>
