using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using _1403605.Models;

namespace _1403605.Views.Product
{
    public partial class Marketplace : Page
    {
        readonly ProductEntities _productEntities = new ProductEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogout_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }


        public IEnumerable<Category> GetAllCategory()
        {
            return from b in _productEntities.Categories
                orderby b.Name
                select b;
        }
    }
}