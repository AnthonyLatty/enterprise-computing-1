<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="Site.Master" CodeBehind="Login.aspx.cs" Inherits="_1403605.Login" %>


<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="jumbotron-login"></div>
        <div class="container">
            <br />
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
                        <label>Email Address</label>
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
                <div class="col-xs-6 col-md-4">
                    <asp:Button ID="btnLoginCustomer" runat="server" Text="Login" class="btn btn-success" OnClick="btnLoginCustomer_OnClick"/>
                </div>
            </div>
        </div>

</asp:Content>