<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PremiumCart.aspx.cs" Inherits="_1403605.Account.Membership.Premium.PremiumCart" MasterPageFile="~/Site.Master" Title="Premium Cart" %>
<%@ Import Namespace="Microsoft.AspNet.Identity" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="jumbotron"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h4 style="text-align: center">
                    <asp:Label ID="lblMessage" runat="server" EnableViewState="False" CssClass="text-danger"/>
                </h4>
                <br />
                <h4 id="banner" style="text-align: center">Thanks for shopping with us <%: Context.User.Identity.GetUserName()  %>, please review your item below.</h4>
                <div class="form-group">
                    <div class="col-md-12">
                        <asp:ListBox ID="lstCart" runat="server" CssClass="form-control"/>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <asp:Button ID="btnRemove" runat="server" Text="Remove Item" onclick="btnRemove_Click" CssClass="btn btn-warning" />
                
                <asp:Button ID="btnEmpty" runat="server" Text="Empty Cart" onclick="btnEmpty_Click" CssClass="btn btn-danger" />
                
                <asp:Button ID="btnContinue" runat="server" Text="Continue Shopping" PostBackUrl="PremiumDashboard.aspx" CssClass="btn btn-primary" />
                
                <asp:Button ID="btnCheckOut" runat="server" Text="Check Out" onclick="btnCheckOut_Click" CssClass="btn btn-success" />
            </div>
        </div>
    </div>
</asp:Content>