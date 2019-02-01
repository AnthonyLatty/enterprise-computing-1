using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace _1403605.Account.Membership.Premium
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void btnSavePremiumCustomer_OnClick(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Create role
                var roleStore = new RoleStore<IdentityRole>();
                var roleManager = new RoleManager<IdentityRole>(roleStore);
                if (!roleManager.RoleExists("Premium"))
                {
                    roleManager.Create(new IdentityRole("Premium"));
                }
                // Create user
                var userStore = new UserStore<IdentityUser>();
                var userManager = new UserManager<IdentityUser>(userStore);
                var user = new IdentityUser
                {
                    Email = txtEmail.Text,
                    UserName = txtUserName.Text
                };
                // Create user and assign to role
                var result = userManager.Create(user, txtPassword.Text);
                if (!userManager.IsInRole(userManager.FindByEmail(user.Email).Id, "Premium"))
                {
                    userManager.AddToRole(userManager.FindByEmail(user.Email).Id, "Premium");
                }

                if (result.Succeeded)
                {
                    var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                    var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                    authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
                    Response.Redirect("~/Account/Membership/Premium/Dashboard.aspx");
                }
                else
                {
                    lblError.Text = "Error registering, please try again.";
                }
            }
        }
    }
}