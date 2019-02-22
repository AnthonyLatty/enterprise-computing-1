<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Products.aspx.cs" Inherits="_1403605.Views.Products" Title="Our Products" %>


<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:SqlDataSource ID="ProductSqlDataSource" runat="server" DataSourceMode="DataSet" />

    <div class="container" id="products-container">
        <div class="row">
            <asp:Repeater ID="ProductsRepeater" DataSourceID="ProductSqlDataSource" runat="server">
                <ItemTemplate>
                    <div class="col-md-4">
                        <div class="card">
                            <img src='<%# Eval("ImageUrl") %>' class="card-img-top" />
                            <div class="card-body">
                                <asp:Label ID="lblTitle" CssClass="card-title" runat="server" Text='<%# Eval("Name") %>' />
                                <br />
                                <asp:Label ID="lblDescription" CssClass="card-text" runat="server" Text='<%# Eval("Description") %>' />
                                <br />
                                <asp:Label ID="lblPrice" CssClass="card-text" runat="server" Text='<%# Eval("UnitPrice") %>' />
                            </div>
                        </div>
                        <br />
                        <br />
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>


