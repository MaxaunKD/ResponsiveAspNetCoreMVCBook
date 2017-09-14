<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="11-2การเพิ่มข้อมูลในฐานข้อมูลโดยอาศัย Entity Framework.aspx.cs" Inherits="PART1_ASP.NET._11_2การเพิ่มข้อมูลในฐานข้อมูลโดยอาศัย_Entity_Framework" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>การเพิ่มข้อมูลในฐานข้อมูลโดยอาศัย Entity Framework</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style type="text/css">
        .TableCol 
        {
            width: 120px;
        }
    </style>
    <script lang="javascript" type="text/javascript">
        $(function) () {
            $("#cmdClear").click(function) () {
                $("#<%=txtProductName.ClientID %>").val("").focus();
                $("#<%=txtUnitPrice.ClientID %>").val("0");
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td class="TableCol">ชื่อสินค้า :</td>
                    <td>
                        <asp:TextBox ID="txtProductName" runat="server" 
                            Width="300px" MaxLength="20"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="TableCol">ราคาสินค้า :</td>
                    <td>
                        <asp:TextBox ID="txtUnitPrice" runat="server" 
                            MaxLength="5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="TableCol">ประเภทสินค้า :</td>
                    <td>
                        <asp:DropDownList ID="ddlCategory" runat="server" Width="195px">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <p>
                <asp:Button ID="cmdAdd" runat="server" Text="เพิ่มข้อมูล" OnClick="cmdAdd_Click"/>
                <input type="button" id="cmdClear" value="ล้างข้อมูล" />
            </p>
            <p>
                <asp:GridView ID="gvProducts" runat="server">
                </asp:GridView>
            </p>
        </div>
    </form>
</body>
</html>
