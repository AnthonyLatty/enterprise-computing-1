<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Marketplace.aspx.cs" Inherits="_1403605.Views.Product.Marketplace" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MarketPlace</title>
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../../Content/Main.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron">
            <div class="row">
                <div class="col-md-10">
                    <h1 id="banner">Welcome to our Market Place.</h1>
                    <p class="lead">Choose from a wide range of products at your finger tips.</p>
                    <p class="lead">
                        <asp:Label ID="lblError" CssClass="text-danger" Font-Bold="True" runat="server" Text=""/>
                    </p>
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btnLogout" runat="server" CssClass="btn btn-danger btn-lg btn-block" Text="Logout" OnClick="btnLogout_OnClick"/>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Available Products</h1>
                    <div class="form-group">
                        <label class="col-md-3 text-left lead">Choose a category:</label>
                        <div class="col-sm-4">
                            <asp:DropDownList ID="ddlProduct" runat="server"
                                              ItemType="_1403605.Models.Category"
                                              SelectMethod="GetAllCategory"
                                              AutoPostBack="true" 
                                              DataValueField="CategoryId" DataTextField="Name"
                                              CssClass="form-control">
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
