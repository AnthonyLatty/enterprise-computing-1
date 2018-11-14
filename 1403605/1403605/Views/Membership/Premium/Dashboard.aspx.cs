using System;
using System.Linq;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using _1403605.Models;

namespace _1403605.Views.Membership.Premium
{
    public partial class Dashboard : Page
    {
        readonly ProductEntities _productEntities = new ProductEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Category> GetAllCategory()
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
        }

        protected void grdCategories_PreRender(object sender, EventArgs e)
        {
            grdCategories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void grdCategories_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            if (e.Exception != null)
            {
                lblError.Text = e.Exception.Message;

                e.ExceptionHandled = true;
            }
            else if (e.AffectedRows == 0)
            {
                if (e.Exception != null)
                    lblError.Text = e.Exception.Message;
            }
        }

        protected void grdCategories_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            if (e.Exception != null)
            {
                lblError.Text = e.Exception.Message;

                e.ExceptionHandled = true;
                e.KeepInEditMode = true;
            }
            else if (e.AffectedRows == 0)
            {
                if (e.Exception != null)
                    lblError.Text = e.Exception.Message;
            }
        }
    }
}