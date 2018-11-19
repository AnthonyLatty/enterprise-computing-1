<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="_1403605.Views.Membership.Premium.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Premium Dashboard</title>
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
                    <p class="lead">
                        <asp:Label ID="lblSuccess" CssClass="text-success" Font-Bold="True" runat="server" Text=""/>
                    </p>
                    <h1>Available Products</h1>
                    <div class="form-group">
                        <label class="col-md-3 text-left lead">Choose a Category:</label>
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
                    <div class="col-md-12">
                        <asp:GridView ID="grdProducts" runat="server" 
                                      AutoGenerateColumns="false" 
                                      DataKeyNames="ProductId"
                                      CssClass="table table-bordered table-hover" 
                                      AllowSorting="true" PageSize="5" 
                                      ItemType="_1403605.Models.Product" 
                                      SelectMethod="grdProducts_GetData">
                            <Columns>
                                <asp:BoundField DataField="ProductId" HeaderText="Product ID">
                                    <ItemStyle CssClass="col-xs-2" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Name" HeaderText="Product Name">
                                    <ItemStyle CssClass="col-xs-2" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Description" HeaderText="Description">
                                    <ItemStyle CssClass="col-xs-2" />
                                </asp:BoundField>
                                <asp:BoundField DataField="UnitPrice" HeaderText="Unit Price" DataFormatString="{0:C}" SortExpression="UnitPrice">
                                    <ItemStyle CssClass="col-xs-2 text-right" />
                                    <HeaderStyle CssClass="text-right" />
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                    </div>
                    <h1>Edit our Products</h1>
                    <asp:SqlDataSource ID="SqlDataSourceConnection" 
                                       runat="server"
                                       DataSourceMode="DataSet"
                                       ConnectionString="<%$ ConnectionStrings:DBConnectionString %>"
                                       SelectCommand="SELECT ProductId, Name, Description FROM Product"
                                       UpdateCommand="UPDATE Product SET Description = @Description WHERE ProductId = @ProductId"
                                       OnUpdated="SqlDataSourceConnection_OnUpdated">
                    </asp:SqlDataSource> 
                    <div class="col-md-12">
                        <asp:GridView ID="grdCategories" 
                                      runat="server"
                                      AutoGenerateColumns="False" 
                                      DataKeyNames="ProductId"
                                      DataSourceID="SqlDataSourceConnection"
                                      AllowPaging="True"
                                      AllowSorting="true" 
                                      PageSize="5"
                                      CssClass="table table-bordered table-hover">
                            <Columns>
                                <asp:BoundField DataField="ProductId" HeaderText="Category ID" ReadOnly="True">
                                    <ItemStyle CssClass="col-xs-2" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Name" HeaderText="Product Name" ReadOnly="True">
                                    <ItemStyle CssClass="col-xs-2" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Description" HeaderText="Product Description">
                                </asp:BoundField>
                                <asp:CommandField CausesValidation="False" ShowEditButton="True">
                                    <ItemStyle CssClass="col-xs-2 text-danger" />
                                </asp:CommandField>
                            </Columns>
                        </asp:GridView>
                        <i>
                            You are viewing page
                            <%=grdCategories.PageIndex + 1%>
                            of
                            <%=grdCategories.PageCount%>
                        </i>
                    </div>
                    <br />
                    <br />
                    <h1>Showcase products</h1>
                    <asp:SqlDataSource ID="ProductsFormViewDataSource" 
                                       SelectCommand="SELECT ProductId, Name, Description, CategoryId, UnitPrice FROM [Product]" 
                                       connectionstring="<%$ ConnectionStrings:DBConnectionString %>" 
                                       runat="server"/>
                    <div class="col-md-12">
                         <asp:FormView ID="ProductsFormView" 
                                  runat="server"
                                  DataSourceID="ProductsFormViewDataSource"
                                  AllowPaging="True">
                            <ItemTemplate>
                                <table class="table table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th>Product ID</th>
                                        <th>Product Name</th>
                                        <th>Category</th>
                                        <th>Description</th>
                                        <th>Unit Price</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <asp:Label id="lblProductId" runat="server" Text='<%# Eval("ProductId") %>' />
                                            </td>
                                            <td>
                                                <asp:Label id="lblProductName" runat="server" Text='<%# Eval("Name") %>' />
                                            </td>
                                            <td>
                                                <asp:Label id="lblCategoryId" runat="server" Text='<%# Eval("CategoryId") %>' />
                                            </td>
                                            <td>
                                                <asp:Label id="lblDescription" runat="server" Text='<%# Eval("Description") %>' />
                                            </td>
                                            <td>
                                                <asp:Label id="lblUnitPrice" runat="server" Text='<%# Eval("UnitPrice") %>' />
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>                 
                            </ItemTemplate>
                             <PagerTemplate>
                                 <table>
                                     <tr>
                                         <td><asp:LinkButton ID="PrevButton"  CommandName="Page" CommandArgument="Prev"  Text="<"  RunAt="server"/></td>
                                         <td><asp:LinkButton ID="NextButton"  CommandName="Page" CommandArgument="Next"  Text=">"  RunAt="server"/></td>
                                     </tr>
                                 </table>
                             </PagerTemplate>
                        </asp:FormView>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
