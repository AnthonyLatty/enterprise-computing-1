using System;
using System.Web.UI;

namespace _1403605.Views.Product
{
    public partial class Marketplace : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogout_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }
    }
}