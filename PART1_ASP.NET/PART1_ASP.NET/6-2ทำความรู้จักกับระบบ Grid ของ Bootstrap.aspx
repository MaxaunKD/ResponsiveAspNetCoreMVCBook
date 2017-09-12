<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="6-2ทำความรู้จักกับระบบ Grid ของ Bootstrap.aspx.cs" Inherits="PART1_ASP.NET._6_2ทำความรู้จักกับระบบ_Grid_ของ_Bootstrap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ทำความรู้จักกับระบบ Grid ของ Bootstrap</title>
    <%--<link  href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap/js/jquery-3.2.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>--%>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <style type="text/css">
        .redBG {
            color: white;
            background-color: red;
            border-style: solid;
        }
        
        .blackBG {
            color: white;
            background-color: black;
            border-style: solid;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-md-6 redBG">Contents 1 : col-md-6</div>
            <div class="col-md-6 redBG">Contents 2 : col-md-6</div>  
        </div>

        <div class="row">
            <div class="col-xs-6 blackBG">Contents 1 : col-xs-6</div>
            <div class="col-xs-6 blackBG">Contents 2 : col-xs-6</div>
        </div>
    </form>
</body>
</html>
