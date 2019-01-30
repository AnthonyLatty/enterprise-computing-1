using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
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
                // Create role
                var roleStore = new RoleStore<IdentityRole>();
                var roleManager = new RoleManager<IdentityRole>(roleStore);
                if (!roleManager.RoleExists("Free"))
                {
                    roleManager.Create(new IdentityRole("Free"));
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
                if (!userManager.IsInRole(userManager.FindByEmail(user.Email).Id, "Free"))
                {
                    userManager.AddToRole(userManager.FindByEmail(user.Email).Id, "Free");
                }

                if (result.Succeeded)
                {
                    var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                    var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                    authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
                    Response.Redirect("~/Account/Membership/Free/Marketplace.aspx");
                }
                else
                {
                    lblError.Text = "Error registering, please try again.";
                }
            }
        }

        // Login View Logout function
        protected void OnLoggingOut(object sender, LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
        }
    }
}