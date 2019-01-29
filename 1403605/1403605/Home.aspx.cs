using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

namespace _1403605
{
    public partial class Home : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("Views/Account/Register.aspx");
        }

        protected void btnLogin_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("Views/Account/Login.aspx");
        }

        // Login view for Home view
        protected void OnLoggingOut(object sender, LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
        }
    }
}