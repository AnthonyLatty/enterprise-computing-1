<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Marketplace.aspx.cs" Inherits="_1403605.Views.Membership.Free.Marketplace" %>

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
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" id="banner" href="#">What's New Superstore</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
                <a class="nav-link" href="../../../Home.aspx">Logout</a>
            </li>
        </ul>
    </nav>
    <form id="form1" runat="server">
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
                                               SelectCommand="SELECT * FROM [Product] 
                                                              ORDER BY [Name]">
                            </asp:SqlDataSource>
                            <%--<asp:DropDownList ID="ddlProduct" runat="server"
                                              ItemType="_1403605.Models.Category"
                                              SelectMethod="GetAllCategory"
                                              AutoPostBack="true"
                                              DataValueField="CategoryId" DataTextField="Name"
                                              CssClass="form-control">
                            </asp:DropDownList>--%>
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
            <%--<div class="row">
                <div class="col-md-12">
                    <asp:GridView ID="grdProducts" runat="server" 
                        AutoGenerateColumns="false" DataKeyNames="ProductId"
                        CssClass="table table-bordered table-hover" 
                        AllowSorting="true" PageSize="5" 
                        ItemType="_1403605.Models.Product" 
                        SelectMethod="grdProducts_GetData">
                        <Columns>
                            <asp:BoundField DataField="ProductId" HeaderText="Product ID">
                                <ItemStyle CssClass="col-xs-2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Name" HeaderText="Product Name" 
                                SortExpression="Name">
                                <ItemStyle CssClass="col-xs-2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Description" HeaderText="Description">
                                <ItemStyle CssClass="col-xs-2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="UnitPrice" HeaderText="Unit Price" DataFormatString="{0:C}">
                                <ItemStyle CssClass="col-xs-2 text-right" />
                                <HeaderStyle CssClass="text-right" />
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>--%>
        </div>
    </form>
</body>
</html>
