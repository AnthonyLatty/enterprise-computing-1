<%@ Page Title="Dashboard" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="PremiumDashboard.aspx.cs" Inherits="_1403605.Account.Membership.Premium.Dashboard" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="jumbotron"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <br />
                <p class="lead">
                    <asp:Label ID="lblError" CssClass="text-danger" Font-Bold="True" runat="server" Text="" />
                </p>
                <p class="lead">
                    <asp:Label ID="lblSuccess" CssClass="text-success" Font-Bold="True" runat="server" Text="" />
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
                            SelectCommand="SELECT * FROM [Product] ORDER BY [Name]"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
        <div class="card" style="width: 18rem;">
            <asp:Image ID="imgProduct" class="card-img-top" runat="server" />
            <div class="card-body">
                <h4 class="card-title text-center">
                    <asp:Label ID="lblProductName" runat="server" />
                </h4>
                <p class="card-text">
                    <asp:Label ID="lblProductDescription" runat="server" />
                </p>
                <p class="card-text">
                    <asp:Label ID="lblUnitPrice" runat="server" />
                </p>
                <div class="row">
                    <div class="col-md-4">
                        <asp:Label runat="server" Text="Quantity" />
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtQuantity" runat="server"
                            CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="QuantityRequiredField" CssClass="text-danger"
                            runat="server" ControlToValidate="txtQuantity" Display="Dynamic" ErrorMessage="Quantity is a required field." />
                        <asp:RangeValidator ID="RangeValidator1" runat="server" CssClass="text-danger"
                            ControlToValidate="txtQuantity" Display="Dynamic"
                            ErrorMessage="Quantity must range from 1 to 500."
                            MaximumValue="500" MinimumValue="1" Type="Integer" />
                    </div>
                </div>
                <br />
                <asp:Button ID="btnAddToCart" runat="server" Text="Add to cart" OnClick="btnAddToCart_OnClick" CssClass="btn btn-success" />
            </div>

        </div>
    </div>
</asp:Content>


