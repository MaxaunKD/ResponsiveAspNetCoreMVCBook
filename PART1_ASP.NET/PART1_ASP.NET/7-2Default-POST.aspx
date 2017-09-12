<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="7-2Default-POST.aspx.cs" Inherits="PART1_ASP.NET._7_2การรับ_ส่งข้อมูลด้วยวิธี_POST" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>การรับ-ส่งข้อมูลด้วยวิธี POST</title>
    <%--<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap/js/jquery-3.2.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>--%>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container-fluid">
        <form id="form1" action="7-2Recived-POST.aspx" runat="server" method="post">
            <fieldset class="form-group">
                <label for="txtFirstName">ชื่อ : </label>
                <input type="text" id="txtFirstName" 
                       name="txtFirstName" class="form-control" />
            </fieldset>

            <fieldset class="form-group">
                <label for="txtLastName">นามสกุล : </label>
                <input type="text" id="txtLastName" 
                       name="txtLastName" class="form-control" />
            </fieldset>

            <button type="submit" class="btn btn-success">Submit</button>
        </form>
    </div>
</body>
</html>
