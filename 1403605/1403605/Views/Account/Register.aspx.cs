using System;
using System.Web.UI;

namespace _1403605.Views.Account
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnFreeMembership_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/Membership/Free/Register.aspx");
        }
    }
}