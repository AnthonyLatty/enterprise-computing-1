using System;
using System.Web.UI;
using _1403605.Models;

namespace _1403605.Account.Membership.Free
{
    public partial class Cart : Page
    {
        private CartItemList _cart;

        protected void Page_Load(object sender, EventArgs e)
        {
            _cart = CartItemList.GetCart();

            if (!IsPostBack)
                DisplayCart();
        }

        private void DisplayCart()
        {
            lstCart.Items.Clear();

            CartItem item;

            for (int i = 0; i < _cart.Count; i++)
            {
                item = _cart[i];

                lstCart.Items.Add(item.Display());
            }
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            if (_cart.Count > 0)
            {
                if (lstCart.SelectedIndex > -1)
                {
                    _cart.RemoveAt(lstCart.SelectedIndex);

                    DisplayCart();
                }
                else
                {
                    lblMessage.Text = "Please select the item you want to remove.";
                }
            }
        }

        protected void btnEmpty_Click(object sender, EventArgs e)
        {
            if (_cart.Count > 0)
            {
                _cart.Clear();

                lstCart.Items.Clear();
            }
        }

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://www.paypal.com/jm/signin");
        }
    }
}