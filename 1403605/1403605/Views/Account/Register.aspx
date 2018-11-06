<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="_1403605.Views.Account.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link href="../../Content/Main.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.0.0.min.js"></script>
    <link href="../../Content/font-awesome.min.css" rel="stylesheet" />
</head>
<body>
    <div class="jumbotron">
        <div class="row">
            <h1 id="banner">Register to use our online store.</h1>
            <p class="lead">
                <asp:Label ID="lblResult" CssClass="text-success" Font-Bold="True" runat="server" Text=""/>
            </p>
        </div>
    </div>
    <form id="form1" runat="server">
         <div class="container">
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
            <div class="row">
                <div class="col-xs-6 col-md-4">
                    <asp:Button ID="btnSaveCustomer" runat="server" Text="Register" class="btn btn-secondary" OnClick="btnSaveCustomer_OnClick"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
