<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="_1403605.Views.Account.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link href="../../Content/Main.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <link href="../../Content/font-awesome.min.css" rel="stylesheet" />
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" id="banner" href="../../Home.aspx">What's New Superstore</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="../../Home.aspx">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../Account/Register.aspx">Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../Account/Login.aspx">Login</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="jumbotron">
        <div class="row">
            <h4 id="banner">Register to use our online store from anywhere.</h4>
        </div>
    </div>
    <form id="form1" runat="server" style="margin-bottom: 30px;">
         <div class="container">
             <div class="row">
                 <div class="col-md-4">
                     <div class="card">
                         <img class="card-img-top" src="https://via.placeholder.com/280" alt="Card image cap"/>
                         <div class="card-body">
                             <h3 class="card-title">Free Membership</h3>
                             <p class="card-text">Sign up to be a free member.Get access to our online store for free, no credit card needed.</p>
                             <asp:Button ID="btnFreeMembership" runat="server" Text="Sign up" CssClass="btn btn-secondary" OnClick="btnFreeMembership_OnClick" />
                         </div>
                     </div>
                 </div>
                 <div class="col-md-4">
                     <div class="card">
                         <img class="card-img-top" src="https://via.placeholder.com/280" alt="Card image cap"/>
                         <div class="card-body">
                             <h3 class="card-title">Premium Membership</h3>
                             <p class="card-text">Get access to our online store with additional features for our premium members.</p>
                             <asp:Button ID="btnPremiumMembership" runat="server" Text="Sign up" CssClass="btn btn-primary" />
                         </div>
                     </div>
                 </div>
             </div>
        </div>
    </form>
</body>
</html>
