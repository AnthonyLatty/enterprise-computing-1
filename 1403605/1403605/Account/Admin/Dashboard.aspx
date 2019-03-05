<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" Title="Admin Dashboard" CodeBehind="Dashboard.aspx.cs" Inherits="_1403605.Account.Admin.Dashboard" %>

<%@ Import Namespace="Microsoft.AspNet.Identity" %>


<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="container">
        <h2 id="banner"><%: Context.User.Identity.GetUserName()  %> Dashboard</h2>
        <hr />
        <br />
        <div class="row">
            <div class="col-8">
                <h2>Current Users</h2>
                <asp:SqlDataSource ID="MemberSqlDataSource"
                    runat="server"
                    DataSourceMode="DataSet"
                    ConnectionString="<%$ ConnectionStrings:DBConnectionString %>"
                    SelectCommand="Select * from AspNetUsers"
                    DeleteCommand="Delete from AspNetUsers where Id = @Id" />
                <asp:GridView ID="grdAspUsers"
                    runat="server"
                    AutoGenerateColumns="False"
                    DataKeyNames="Id"
                    DataSourceID="MemberSqlDataSource"
                    AllowPaging="True"
                    AllowSorting="true"
                    PageSize="5"
                    CssClass="table table-bordered table-hover">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="User ID" ReadOnly="True">
                            <ItemStyle CssClass="col-xs-2" />
                        </asp:BoundField>
                        <asp:BoundField DataField="UserName" HeaderText="User name" ReadOnly="True">
                            <ItemStyle CssClass="col-xs-2" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True">
                            <ItemStyle CssClass="col-xs-2" />
                        </asp:BoundField>
                        <asp:CommandField CausesValidation="False" ShowDeleteButton="True">
                            <ItemStyle CssClass="col-xs-2 text-danger" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
                <i>You are viewing page
                <%=grdAspUsers.PageIndex + 1%>
                of
                <%=grdAspUsers.PageCount%>
                </i>
            </div>
            <br />
            <br />
            <div class="col-sm-4">
                <h2>Active Roles</h2>
                <asp:SqlDataSource ID="RolesSqlDataSource"
                    runat="server"
                    DataSourceMode="DataSet"
                    ConnectionString="<%$ ConnectionStrings:DBConnectionString %>"
                    SelectCommand="Select * from AspNetRoles" />
                <asp:GridView ID="grdRoles"
                    runat="server"
                    AutoGenerateColumns="False"
                    DataKeyNames="Id"
                    DataSourceID="RolesSqlDataSource"
                    AllowPaging="True"
                    AllowSorting="true"
                    PageSize="5"
                    CssClass="table table-bordered table-hover">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Role type" ReadOnly="True">
                            <ItemStyle CssClass="col-xs-2" />
                        </asp:BoundField>
                        <%--<asp:CommandField CausesValidation="False" ShowEditButton="False">
                    <ItemStyle CssClass="col-xs-2 text-danger" />
                </asp:CommandField>--%>
                    </Columns>
                </asp:GridView>
                <i>You are viewing page
                <%=grdAspUsers.PageIndex + 1%>
                of
                <%=grdAspUsers.PageCount%>
                </i>
            </div>
        </div>
        <br />
        <br />
        <div class="row">
            <div class="col-md-12">
                <h1>Edit Products</h1>
                <p class="lead" style="text-align: center">
                    <asp:Label ID="lblSuccess" CssClass="text-success" Font-Bold="True" runat="server" Text="" />
                </p>
                <asp:SqlDataSource ID="ProductSqlDataSourceConnection"
                    runat="server"
                    DataSourceMode="DataSet"
                    ConnectionString="<%$ ConnectionStrings:DBConnectionString %>"
                    SelectCommand="SELECT * FROM Product"
                    UpdateCommand="UPDATE Product SET Description = @Description, Name = @Name, UnitPrice = @UnitPrice WHERE ProductId = @ProductId"
                    DeleteCommand="Delete FROM Product where ProductId = @ProductId"
                    OnUpdated="ProductSqlDataSourceConnection_OnUpdated"></asp:SqlDataSource>
                <asp:GridView ID="grdCategories"
                    runat="server"
                    AutoGenerateColumns="False"
                    DataKeyNames="ProductId"
                    DataSourceID="ProductSqlDataSourceConnection"
                    AllowPaging="True"
                    AllowSorting="true"
                    PageSize="5"
                    CssClass="table table-bordered table-hover">
                    <Columns>
                        <asp:BoundField DataField="ProductId" HeaderText="Category ID" ReadOnly="True">
                            <ItemStyle CssClass="col-xs-2" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Name" HeaderText="Product Name">
                            <ItemStyle CssClass="col-xs-2" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Description" HeaderText="Product Description"></asp:BoundField>
                        <asp:BoundField DataField="UnitPrice" HeaderText="Price"></asp:BoundField>
                        <asp:CommandField CausesValidation="False" ShowEditButton="True" ShowDeleteButton="True">
                            <ItemStyle CssClass="col-xs-2 text-danger" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
                <i>You are viewing page
                <%=grdCategories.PageIndex + 1%>
                of
                <%=grdCategories.PageCount%>
                </i>
            </div>
        </div>
        <br />
        <br />
        <div class="row">
            <div class="col-md-6">
                <h2>Add Products on Sale</h2>
                <br />
                <asp:Label ID="lblResult" Font-Size="Large" CssClass="text-success" runat="server" />
                <br />
                <asp:Label ID="lblError" Font-Size="Large" CssClass="text-danger" runat="server" />
                <div class="form-group">
                    <%--<label>Sales ID</label>--%>
                    <asp:TextBox ID="txtSalesID" Visible="false" CssClass="form-control" runat="server" />
                </div>
                <div class="form-group">
                    <label>Product Name</label>
                    <asp:TextBox ID="txtProductName" CssClass="form-control" runat="server" />
                </div>
                <div class="form-group">
                    <label>Description</label>
                    <asp:TextBox ID="txtDescription" CssClass="form-control" runat="server" />
                </div>
                <div class="form-group">
                    <%--<label>Image</label>--%>
                    <asp:Image ID="imgUrl" Visible="false" CssClass="form-control" runat="server" />
                </div>
                <div class="form-group">
                    <label>Price</label>
                    <asp:TextBox ID="txtUnitPrice" CssClass="form-control" runat="server" />
                </div>
                <asp:Button ID="btnSaveSaleProduct" CssClass="btn btn-primary btn-lg" runat="server" Text="Save" OnClick="btnSaveSaleProduct_Click" />
            </div>
        </div>
    </div>
</asp:Content>
