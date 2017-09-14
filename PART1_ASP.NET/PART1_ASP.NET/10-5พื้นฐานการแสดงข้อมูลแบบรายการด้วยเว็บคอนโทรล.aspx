<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="10-5พื้นฐานการแสดงข้อมูลแบบรายการด้วยเว็บคอนโทรล.aspx.cs" Inherits="PART1_ASP.NET._10_5พื้นฐานการแสดงข้อมูลแบบรายการด้วยเว็บคอนโทรล" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>พื้นฐานการแสดงข้อมูลแบบรายการด้วยเว็บคอนโทรล</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddlCategories" runat="server" 
                              AutoPostBack="true" OnSelectedIndexChanged="ddlCategories_SelectedIndexChanged">

            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
