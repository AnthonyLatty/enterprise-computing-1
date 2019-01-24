using System;
using System.Web.UI;

namespace _1403605
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnFreeMembership_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/Membership/Free/Register.aspx");
        }

        protected void btnPremiumMembership_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/Membership/Premium/Register.aspx");
        }
    }
}