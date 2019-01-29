<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Marketplace.aspx.cs" Inherits="_1403605.Account.Membership.Free.Marketplace" %>
<%@ Import Namespace="Microsoft.AspNet.Identity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MarketPlace</title>
    <link href="../../../Content/Main.css" rel="stylesheet" />
    <link href="../../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../../Scripts/jquery-3.3.1.min.js"></script>
    <link href="../../../Content/font-awesome.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" id="banner" href="#">What's New Superstore</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <ul class="navbar-nav ml-auto">
                <asp:LoginView ID="MarketplaceLoginView" runat="server">
                    <AnonymousTemplate>
                        <h2>...</h2>
                    </AnonymousTemplate>

                    <LoggedInTemplate>
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a runat="server" class="nav-link">Hello, <%: Context.User.Identity.GetUserName()  %>!   </a>
                            </li>
                            <li>
                                <asp:LoginStatus runat="server" CssClass="nav-link" LogoutAction="Redirect" LogoutText="Log off" LogoutPageUrl="~/Home.aspx" OnLoggingOut="OnLoggingOut" />
                            </li>
                        </ul>
                    </LoggedInTemplate>
                </asp:LoginView>
            </ul>
        </nav>
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
    </form>
</body>
</html>
