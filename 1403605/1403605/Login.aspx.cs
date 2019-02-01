using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace _1403605
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected async void btnLoginCustomer_OnClick(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var userStore = new UserStore<IdentityUser>();
                var userManager = new UserManager<IdentityUser>(userStore);
                var user = await userManager.FindByEmailAsync(txtEmail.Text);
                if (user != null)
                {
                    var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                    var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                    authenticationManager.SignIn(new AuthenticationProperties()
                    {
                        IsPersistent = false
                    }, userIdentity);


                    if (userManager.IsInRole(user.Id, "Free"))
                    {
                        Response.Redirect("~/Account/Membership/Free/Marketplace.aspx");
                    }
                    if (userManager.IsInRole(user.Id, "Premium"))
                    {
                        Response.Redirect("~/Account/Membership/Premium/Dashboard.aspx");
                    }
                }
                else
                {
                    lblError.Text = "Invalid email or password.";
                }
            }
        }

    }
}