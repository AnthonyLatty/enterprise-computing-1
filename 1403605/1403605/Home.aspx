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
    <form id="form1" runat="server">
        <div class="jumbotron">
            <div class="row">
                <div class="col-md-8">
                    <h3 class="display-4"><strong id="strong-color">Watts New Superstore</strong></h3>
                    <p class="lead">An online store for customers to buy electronics.</p>
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btnRegister" runat="server" CssClass="btn btn-secondary btn-lg btn-block" Text="Register" OnClick="btnRegister_OnClick" />
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-success btn-lg btn-block" Text="Login" OnClick="btnLogin_OnClick" />
                </div>
            </div>
        </div>
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
