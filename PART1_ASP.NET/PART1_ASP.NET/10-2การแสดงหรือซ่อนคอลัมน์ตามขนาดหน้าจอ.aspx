<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="10-2การแสดงหรือซ่อนคอลัมน์ตามขนาดหน้าจอ.aspx.cs" Inherits="PART1_ASP.NET._10_2การแสดงหรือซ่อนคอลัมน์ตามขนาดหน้าจอ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>การแสดงหรือซ่อนคอลัมน์ตามขนาดหน้าจอ</title>
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
            <asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="false" 
                AllowPaging="True" OnPageIndexChanging="gvCustomers_PageIndexChanging">
                <Columns>
                    <asp:BoundField DataField="CustomerID" HeaderText="รหัสลูกค้า" />
                    <asp:BoundField DataField="CompanyName" HeaderText="ชื่อบริษัท" />
                    <asp:BoundField DataField="ContactName" HeaderText="ผู้ติดต่อ" 
                        HeaderStyle-CssClass="hidden-xs hidden-sm" ItemStyle-CssClass="hidden-xs hidden-sm" />

                    <asp:BoundField DataField="ContactTitle" HeaderText="คำนำหน้า" 
                        HeaderStyle-CssClass="hidden-xs hidden-sm" ItemStyle-CssClass="hidden-xs hidden-sm" />

                    <asp:BoundField DataField="Address" HeaderText="ที่อยู่" 
                        HeaderStyle-CssClass="hidden-xs hidden-sm hidden-md" ItemStyle-CssClass="hidden-xs hidden-sm hidden-md" />
                    <asp:BoundField DataField="City" HeaderText="เมือง" 
                        HeaderStyle-CssClass="hidden-xs hidden-sm hidden-md" ItemStyle-CssClass="hidden-xs hidden-sm hidden-md" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
