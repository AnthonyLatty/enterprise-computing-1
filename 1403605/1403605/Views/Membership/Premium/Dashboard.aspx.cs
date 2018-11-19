using System;
using System.Data;
using System.Linq;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using _1403605.Models;

namespace _1403605.Views.Membership.Premium
{
    public partial class Dashboard : Page
    {
        private readonly ProductEntities _productEntities = new ProductEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

           
        }


        public IQueryable<Category> GetAllCategory()
        {
            return from b in _productEntities.Categories
                orderby b.Name
                select b;
        }

        public IQueryable<Product> grdProducts_GetData([Control] string ddlProduct)
        {
            if (ddlProduct == null)
                ddlProduct = (from c in _productEntities.Categories
                              orderby c.Name
                              select c).FirstOrDefault() ?.CategoryId;

            // get the products for the selected category
            return from p in _productEntities.Products
                where p.CategoryId == ddlProduct
                orderby p.Name
                select p;
        }


        protected void SqlDataSourceConnection_OnUpdated(object sender, SqlDataSourceStatusEventArgs e)
        {
            lblSuccess.Text = e.AffectedRows > 0 ? "Row Updated Successfully" : "No data updated!";
        }

        protected void btnCheckOut_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("https://www.paypal.com/jm/home");
        }
    }
}