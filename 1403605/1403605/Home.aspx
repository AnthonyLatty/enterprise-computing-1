<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="_1403605.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/Main.css" rel="stylesheet" />
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" id="banner" href="Home.aspx">What's New Superstore</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="Home.aspx">Home <span class="sr-only">(current)</span></a>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="Views/Account/Register.aspx">Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Views/Account/Login.aspx">Login</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="jumbotron"></div>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h3 id="banner">24/7 Service</h3>
                    <i class="fa-5x fa fa-credit-card-alt" aria-hidden="true"></i>
                    <p id="banner-font">We are always available anywhere, anytime.</p>
                </div>
                <div class="col-md-4">
                    <h3 id="banner">Secured Always</h3>
                    <i class="fa-5x fa fa-lock" aria-hidden="true"></i>
                    <p id="banner-font">Your account is always secured with us.</p>
                </div>
                <div class="col-md-4">
                    <h3 id="banner">User Friendly</h3>
                    <i class="fa-5x fa fa-desktop" aria-hidden="true"></i>
                    <p id="banner-font">Our system is user friendly and easy to use.</p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
