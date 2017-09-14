<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="10-1พื้นฐานการแสดงข้อมูลแบบตารางด้วยเว็บคอนโทรล.aspx.cs" Inherits="PART1_ASP.NET._10_1พื้นฐานการแสดงข้อมูลแบบตารางด้วยเว็บคอนโทรล" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>พื้นฐานการแสดงข้อมูลแบบตารางด้วยเว็บคอนโทรล</title>
    <%--<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap/js/jquery-3.2.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>--%>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gvCustomers" runat="server" class="table table-hover">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
