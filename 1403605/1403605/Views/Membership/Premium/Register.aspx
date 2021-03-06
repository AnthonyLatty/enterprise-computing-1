﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="_1403605.Views.Membership.Premium.Register" %>

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
                <li class="nav-item">
                    <a class="nav-link" href="../../Account/Login.aspx">Login</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="jumbotron-register"></div>
    <form id="form1" runat="server">
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
                        <asp:TextBox CssClass="form-control" ID="txtUserId" Visible="False" runat="server"/>
                    </div>
                </div>
            </div>
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
            <div class="col-6 col-md-4">
                <div class="form-group">
                    <asp:DropDownList ID="ddlMembershipType" runat="server" 
                                      CssClass="form-control"
                                      Visible="False"
                                      AppendDataBoundItems="true">  
                        <asp:ListItem Selected="True" Value="1">Premium</asp:ListItem>  
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6 col-md-4">
                    <asp:Button ID="btnSavePremiumCustomer" runat="server" Text="Register" class="btn btn-success" OnClick="btnSavePremiumCustomer_OnClick" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
