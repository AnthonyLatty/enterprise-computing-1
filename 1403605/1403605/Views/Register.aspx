<%@ Page AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Register.aspx.cs" Inherits="_1403605.Views.Register" Language="C#" Title="Register" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="jumbotron">
        <div class="row">
            <h4 id="banner">Register to use our online store from anywhere.</h4>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <img class="card-img-top" src="../Images/free_membership.jpg" alt="Card image cap"/>
                    <div class="card-body">
                        <h3 class="card-title">Free Membership</h3>
                        <p class="card-text">Sign up to be a free member.Get access to our online store for free, no credit card needed. <strong>Only one item can be purchase at a time.</strong></p>
                        <asp:Button ID="btnFreeMembership" runat="server" Text="Sign up" CssClass="btn btn-secondary" OnClick="btnFreeMembership_OnClick" />
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img class="card-img-top" src="../Images/membership-banner.jpg" alt="Card image cap"/>
                    <div class="card-body">
                        <h3 class="card-title">Premium Membership</h3>
                        <p class="card-text">Get access to our online store with additional features for our premium members.</p>
                        <asp:Button ID="btnPremiumMembership" runat="server" Text="Sign up" CssClass="btn btn-primary" OnClick="btnPremiumMembership_OnClick" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

    

