<%@ Page AutoEventWireup="true" CodeBehind="Marketplace.aspx.cs" Inherits="_1403605.Account.Membership.Free.Marketplace" Language="C#" MasterPageFile="~/Site.Master" Title="Marketplace" %>


<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="jumbotron"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <br />
                    <p class="lead">
                        <asp:Label ID="lblError" CssClass="text-danger" Font-Bold="True" runat="server" Text=""/>
                    </p>
                    <h1>Available Products</h1>
                    <div class="form-group">
                        <label class="col-md-3 text-left lead">Choose a product:</label>
                        <div class="col-sm-4">
                            <asp:DropDownList ID="ddlProducts" runat="server" AutoPostBack="True" 
                                              DataSourceID="SqlDataSource1" DataTextField="Name" 
                                              DataValueField="ProductId" CssClass="form-control">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                               ConnectionString='<%$ ConnectionStrings:DBConnectionString %>'
                                               SelectCommand="SELECT * FROM [Product] ORDER BY [Name]">
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="../../../Images/wow_deal.jpg" alt="Card image cap"/>
                <div class="card-body">
                    <h4 class="card-title text-center">
                        <asp:Label ID="lblProductName" runat="server"/>
                    </h4>
                    <p class="card-text">
                        <asp:Label ID="lblProductDescription" runat="server"/>
                    </p>
                    <p class="card-text">
                        <asp:Label ID="lblUnitPrice" runat="server"/>
                    </p>
                    <asp:Button ID="btnCheckOut" runat="server" Text="Check out" OnClick="btnCheckOut_OnClick" CssClass="btn btn-success" />
                </div>
            </div>
            <br />
            <br />
        </div>
</asp:Content>
        
