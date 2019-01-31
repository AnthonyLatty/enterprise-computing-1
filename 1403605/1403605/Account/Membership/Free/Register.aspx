<%@ Page AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="_1403605.Account.Membership.Free.Register" Language="C#" MasterPageFile="~/Site.Master" Title="Register" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="jumbotron-register"></div>
        <div class="container">
            <br />
            <p class="lead">
                <asp:Label ID="lblSuccess" CssClass="text-success" Font-Bold="True" runat="server" Text=""/>
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
                    <asp:Button ID="btnSaveFreeCustomer" runat="server" Text="Register" class="btn btn-secondary" OnClick="btnSaveFreeCustomer_OnClick"/>
                </div>
            </div>
            <br />
            <br />
        </div>
</asp:Content>

