<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="11-3การแก้ไขข้อมูล.aspx.cs" Inherits="PART1_ASP.NET._11_3การแก้ไขข้อมูล" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>การแก้ไขข้อมูล</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script lang="javascript" type="text/javascript">
        $(function () {
            $("#gvProducts > tbody > tr:not(:has(table, th))").click(function(e) {
                var ColProductID   = $(e.target).parent().find("td:eq(0)").text();
                var ColProductName = $(e.target).parent().find("td:eq(1)").text();
                var ColUnitPrice   = $(e.target).parent().find("td:eq(2)").text();
                
                $("#<%=lblProductID.ClientID %>").text(ColProductID);
                $("#<%=CurrentProductID.ClientID %>").val(ColProductID);
                $("#<%=txtProductName.ClientID %>").val(ColProductName);
                $("#<%=txtUnitPrice.ClientID %>").val(ColUnitPrice);
            });
        });
        
    </script>
    <style type="text/css">
        .ColTable 
        {
            width: 123px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="CurrentProductID" runat="server" />
            <table style="width: 100%;">
                <tr>
                    <td class="ColTable">
                        รหัสสินค้า :
                    </td>
                    <td>
                        <asp:Label ID="lblProductID" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="ColTable">
                        ชื่อสินค้า :
                    </td>
                    <td>
                        <asp:TextBox ID="txtProductName" runat="server" 
                            Width="300px" MaxLength="20"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="ColTable">
                        ราคาสินค้า :
                    </td>
                    <td>
                        <asp:TextBox ID="txtUnitPrice" runat="server" 
                            MaxLength="5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="ColTable">
                    </td>
                    <td>
                        <asp:Button ID="cmdEdit" runat="server" Text="แก้ไขข้อมูล" OnClick="cmdEdit_Click" />
                        <asp:Button ID="cmdClear" runat="server" Text="ล้างข้อมูล" OnClick="cmdClear_Click" />
                    </td>
                </tr>
            </table>
            <div>
                <asp:GridView ID="gvProducts" runat="server" 
                    AllowPaging="True" OnPageIndexChanging="gvProducts_PageIndexChanging"
                    OnRowCreated="gvProducts_RowCreated">
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
