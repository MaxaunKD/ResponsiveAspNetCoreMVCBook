<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="6-1ทำความรู้จักกับตัวบรรจุ container และ container-fluid.aspx.cs" Inherits="PART1_ASP.NET._6_1ทำความรู้จักกับตัวบรรจุ_container_และ_container_fluid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ทำความรู้จักกับตัวบรรจุ container และ container-fluid</title>
    <%--CDN--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <%--File--%>
    <%--<link  href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap/js/jquery-3.2.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>--%>

    <style type="text/css">
        .redBG{
            color:white;
            background-color:red;
        }
        .blackBG{
            color:white;
            background-color:black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container redBG">
            <h1>ตัวบรรจุแบบ container</h1>
        </div>
        <div class="container-fluid blackBG">
            <h1>ตัวบรรจุแบบ container-fluid</h1>
        </div>
    </form>
</body>
</html>
