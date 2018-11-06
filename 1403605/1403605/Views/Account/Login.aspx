<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_1403605.Views.Account.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../../Content/Main.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
</head>
<body>
    <div class="jumbotron">
        <h1 id="banner">Login to your account to start your online journey with us.</h1>
        <p class="lead">
            <asp:Label ID="lblError" CssClass="text-danger" Font-Bold="True" runat="server" Text=""/>
        </p>
    </div>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-6 col-md-4">
                    <div class="form-group">
                        <label>User Name</label>
                        <asp:TextBox CssClass="form-control" ID="txtUserName" runat="server"/>
                        <asp:RequiredFieldValidator ID="UserNameFieldValidator" runat="server" ErrorMessage="Required Field" CssClass="text-danger" ControlToValidate="txtUserName" Display="Dynamic"/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-6 col-md-4">
                    <div class="form-group">
                        <label>Password</label>
                        <asp:TextBox CssClass="form-control" ID="txtPassword" TextMode="Password" runat="server"/>
                        <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator" runat="server" ErrorMessage="Required Field" ControlToValidate="txtPassword" CssClass="text-danger" Display="Dynamic"/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6 col-md-4">
                    <asp:Button ID="btnLoginCustomer" runat="server" Text="Login" class="btn btn-success" OnClick="btnLoginCustomer_OnClick"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
