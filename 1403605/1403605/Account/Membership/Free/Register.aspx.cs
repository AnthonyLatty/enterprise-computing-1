using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace _1403605.Account.Membership.Free
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSaveFreeCustomer_OnClick(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Default UserStore constructor uses the default connection string named: DefaultConnection
                var userStore = new UserStore<IdentityUser>();
                var manager = new UserManager<IdentityUser>(userStore);

                var user = new IdentityUser() { UserName = txtUserName.Text, Email = txtEmail.Text};
                IdentityResult result = manager.Create(user, txtPassword.Text);

                if (result.Succeeded)
                {
                    var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                    var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                    authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
                    Response.Redirect("~/Account/Membership/Free/Marketplace.aspx");
                }
                else
                {
                    lblError.Text = result.Errors.FirstOrDefault();
                }
            }
        }
    }
}