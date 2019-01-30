<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="_1403605.Account.Membership.Premium.Register" %>
<%@ Import Namespace="Microsoft.AspNet.Identity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Premium Membership</title>
    <link href="../../../Content/Main.css" rel="stylesheet" />
    <link href="../../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../../Scripts/jquery-3.3.1.min.js"></script>
    <link href="../../../Content/font-awesome.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" id="banner" href="../../../Home.aspx">What's New Superstore</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="../../../Home.aspx">Home</a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <asp:LoginView ID="PremiumLoginView" runat="server">
                        <AnonymousTemplate>
                            <ul class="nav navbar-nav navbar-right">
                                <li>
                                    <a runat="server" class="nav-link" href="~/Account/Membership/Premium/Register.aspx">Register</a>
                                </li>
                            </ul>
                        </AnonymousTemplate>

                        <LoggedInTemplate>
                            <ul class="nav navbar-nav navbar-right">
                                <li>
                                    <a runat="server">Hello, <%: Context.User.Identity.GetUserName()  %> !</a>
                                </li>
                                <li>
                                    <asp:LoginStatus runat="server" LogoutAction="Redirect" LogoutText="Log off" LogoutPageUrl="~/Home.aspx" OnLoggingOut="OnLoggingOut" />
                                </li>
                            </ul>
                        </LoggedInTemplate>
                    </asp:LoginView>
                </ul>
            </div>
        </nav>
        <div class="jumbotron-register"></div>
        <div class="container">
            <br />
            <p class="lead">
                <asp:Label ID="lblResult" CssClass="text-success" Font-Bold="True" runat="server" Text=""/>
            </p>
            <p class="lead">
                <asp:Label ID="lblError" CssClass="text-danger" Font-Bold="True" runat="server" Text=""/>
            </p>
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
                        <label>Email</label>
                        <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server"/>
                        <asp:RequiredFieldValidator ID="EmailFieldValidator" runat="server" ErrorMessage="Required Field" CssClass="text-danger" ControlToValidate="txtEmail" Display="Dynamic"/>
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
                <div class="col-6 col-md-4">
                    <div class="form-group">
                        <label>Confirm Password</label>
                        <asp:TextBox CssClass="form-control" ID="txtConfirmPassword" TextMode="Password" runat="server"/>
                        <asp:RequiredFieldValidator ID="ConfirmPasswordFieldValidator" runat="server" ErrorMessage="Required Field" ControlToValidate="txtConfirmPassword" CssClass="text-danger" Display="Dynamic"/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6 col-md-4">
                    <asp:Button ID="btnSavePremiumCustomer" runat="server" Text="Register" class="btn btn-success" OnClick="btnSavePremiumCustomer_OnClick" />
                </div>
            </div>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
