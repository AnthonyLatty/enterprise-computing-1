<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Products.aspx.cs" Inherits="_1403605.Views.Products" Title="Our Products" %>


<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="container" id="products-container">
        <div class="row">
            <div class="col-md-12">
                <asp:SqlDataSource ID="ProductSqlDataSourceConnection" 
                                   runat="server"
                                   DataSourceMode="DataSet"
                                   ConnectionString="<%$ ConnectionStrings:DBConnectionString %>"
                                   SelectCommand="SELECT * FROM Product">
                </asp:SqlDataSource> 
                <asp:GridView ID="grdCategories" 
                              runat="server"
                              AutoGenerateColumns="False" 
                              DataKeyNames="ProductId"
                              DataSourceID="ProductSqlDataSourceConnection"
                              AllowPaging="True"
                              AllowSorting="true" 
                              PageSize="8"
                              CssClass="table table-bordered table-hover">
                    <Columns>
                        
                        <asp:BoundField DataField="Name" HeaderText="Product Name" ReadOnly="True">
                            <ItemStyle CssClass="col-xs-2" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Description" HeaderText="Product Description" ReadOnly="True">
                        </asp:BoundField>
                        <asp:BoundField DataField="UnitPrice" HeaderText="Price" ReadOnly="True">
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
                <i>
                    You are viewing page
                    <%=grdCategories.PageIndex + 1%>
                    of
                    <%=grdCategories.PageCount%>
                </i>
            </div>
        </div>
    </div>
</asp:Content>


