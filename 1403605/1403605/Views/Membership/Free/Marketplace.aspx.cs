using System;
using System.Data;
using System.Linq;
using System.Web.ModelBinding;
using System.Web.UI;
using _1403605.Models;

namespace _1403605.Views.Membership.Free
{
    public partial class Marketplace : Page
    {
//        readonly ProductEntities _productEntities = new ProductEntities();

        private Product _selectedProduct;

        protected void Page_Load(object sender, EventArgs e)
        {
            //bind drop-down list on first load   
            if (!IsPostBack) ddlProducts.DataBind();

            //get and show product on every load
            _selectedProduct = GetSelectedProduct();

            lblProductName.Text = _selectedProduct.Name;
            lblProductDescription.Text = _selectedProduct.Description;
            lblUnitPrice.Text = "Price: $" + _selectedProduct.UnitPrice + " each";
        }

        private Product GetSelectedProduct()
        {
            //get row from SqlDataSource based on value in drop-down list
            DataView productsTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            productsTable.RowFilter = "ProductId = '" + ddlProducts.SelectedValue + "'";

            DataRowView row = productsTable[0];

            //create a new product object and load with data from row
            Product p = new Product
            {
                ProductId = Convert.ToInt32(row["ProductId"].ToString()),
                Name = row["Name"].ToString(),
                Description = row["Description"].ToString(),
                UnitPrice = (decimal) row["UnitPrice"],
                CategoryId = row["CategoryId"].ToString()
            };

            return p;
        }

        /*public IQueryable<Category> GetAllCategory()
        {
            return from b in _productEntities.Categories
                orderby b.Name
                select b;
        }


        public IQueryable<Models.Product> grdProducts_GetData([Control] string ddlProduct)
        {
            if (ddlProduct == null)
                ddlProduct = (from c in _productEntities.Categories
                    orderby c.Name
                    select c).FirstOrDefault().CategoryId;

            // get the products for the selected category
            return from p in _productEntities.Products
                where p.CategoryId == ddlProduct
                orderby p.Name
                select p;
        }*/

        protected void btnCheckOut_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("https://www.paypal.com/jm/home");
        }
    }
}