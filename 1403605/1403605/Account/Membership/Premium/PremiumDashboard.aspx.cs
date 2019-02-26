using System;
using System.Data;
using System.Web.UI;
using _1403605.Models;

namespace _1403605.Account.Membership.Premium
{
    public partial class Dashboard : Page
    {
        private ProductItem _selectedProduct;

        protected void Page_Load(object sender, EventArgs e)
        {
            //bind drop-down list on first load   
            if (!IsPostBack)
                ddlProducts.DataBind();

            //get and show product on every load
            _selectedProduct = GetSelectedProduct();

            lblProductName.Text = _selectedProduct.Name;
            lblProductDescription.Text = _selectedProduct.Description;
            lblUnitPrice.Text = "Price: $" + _selectedProduct.UnitPrice + " each";
            imgProduct.ImageUrl = "../../../Images/Products/" + _selectedProduct.ImageUrl;
        }


        private ProductItem GetSelectedProduct()
        {
            //get row from SqlDataSource based on value in drop-down list
            DataView productsTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            productsTable.RowFilter = "ProductId = '" + ddlProducts.SelectedValue + "'";

            DataRowView row = productsTable[0];

            //create a new product object and load with data from row
            ProductItem p = new ProductItem
            {
                ProductId = Convert.ToInt32(row["ProductId"].ToString()).ToString(),
                Name = row["Name"].ToString(),
                Description = row["Description"].ToString(),
                UnitPrice = (decimal)row["UnitPrice"],
                ImageUrl = row["ImageUrl"].ToString()
            };

            return p;
        }


        protected void btnAddToCart_OnClick(object sender, EventArgs e)
        {
            if (IsValid)
            {
                //get cart from session and selected item from cart
                CartItemList cart = CartItemList.GetCart();
                CartItem cartItem = cart[_selectedProduct.ProductId];

                //if item isn’t in cart, add it; otherwise, increase its quantity
                if (cartItem == null)
                {
                    cart.AddItem(_selectedProduct, Convert.ToInt32(txtQuantity.Text));
                }
                else
                {
                    cartItem.AddQuantity(Convert.ToInt32(txtQuantity.Text));
                }

                Response.Redirect("~/Account/Membership/Premium/PremiumCart.aspx");
            }
        }
    }
}