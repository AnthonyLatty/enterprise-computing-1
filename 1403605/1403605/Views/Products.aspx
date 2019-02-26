<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Products.aspx.cs" Inherits="_1403605.Views.Products" Title="Our Products" %>


<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="alert alert-primary" role="alert">
        Online Users: <asp:Label ID="lblOnlineCustomers" runat="server"/>
    </div>
    <asp:SqlDataSource ID="ProductSqlDataSource" runat="server" DataSourceMode="DataSet" />
    <div class="container" id="products-container">
        <div class="row">
            <asp:Repeater ID="ProductsRepeater" DataSourceID="ProductSqlDataSource" runat="server">
                <ItemTemplate>
                    <div class="col-md-4">
                        <div class="card">
                            <img src='/Images/Products/<%# Eval("ImageUrl") %>' onerror="this.onerror=null;this.src='../Images/sale_poster.jpg';" class="card-img-top" />
                            <div class="card-body">
                                <asp:Label ID="lblTitle" CssClass="card-title" Font-Bold="true" Font-Size="Large" runat="server" Text='<%# Eval("Name") %>' />
                                <br />
                                <asp:Label ID="lblDescription" CssClass="card-text" runat="server" Text='<%# Eval("Description") %>' />
                                <br />
                                <asp:Label ID="lblPrice" CssClass="card-text" Font-Size="Medium" ForeColor="Green" runat="server" Text='<%# String.Format("{0:C} JMD", Eval("UnitPrice")) %>' />
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


