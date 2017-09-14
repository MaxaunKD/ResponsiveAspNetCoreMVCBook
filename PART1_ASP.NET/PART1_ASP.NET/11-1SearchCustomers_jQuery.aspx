<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="11-1SearchCustomers_jQuery.aspx.cs" Inherits="PART1_ASP.NET._11_1การค้นหาข้อมูลด้วย_jQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>การค้นหาข้อมูลด้วย jQuery</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var txt = $("#txtSearch");
            txt.focus();
        });
        function SearchCustomer() {
            $.get("11-1SearchCustomers.aspx",
            {
                q: $("#txtSearch").val(),
                f: $("#ddlFilter").val()
            },
        function (customer) {
                $("#divCustomer").html(customer);
        });
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddlFilter" runat="server">
                <asp:ListItem Value="CustomerID">รหัสลูกค้า</asp:ListItem>
                <asp:ListItem Value="ContactName">ชื่อติดต่อ</asp:ListItem>
            </asp:DropDownList>
            <input type="text" id="txtSearch"  />
            <input type="button" id="cmdSearch" value="ค้าหารายชื่อลูกค้า" onclick="SearchCustomer();" /><br />
        </div>
        <div id="divCustomer" />
    </form>
</body>
</html>
