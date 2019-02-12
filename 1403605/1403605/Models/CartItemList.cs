using System.Collections.Generic;
using System.Web;

namespace _1403605.Models
{
    public class CartItemList
    {
        private readonly List<CartItem> _cartItems;

        public CartItemList()
        {
            _cartItems = new List<CartItem>();
        }

        public int Count => _cartItems.Count;

        public CartItem this[int index]
        {
            get => _cartItems[index];
            set => _cartItems[index] = value;
        }

        public CartItem this[string id]
        {
            get
            {
                foreach (var c in _cartItems)
                    if (c.ProductItem.ProductId == id) return c;
                return null;
            }
        }

        public static CartItemList GetCart()
        {
            var cart = (CartItemList)HttpContext.Current.Session["Cart"];
            if (cart == null)
                HttpContext.Current.Session["Cart"] = new CartItemList();
            return (CartItemList)HttpContext.Current.Session["Cart"];
        }

        public void AddItem(ProductItem product, int quantity)
        {
            var c = new CartItem(product, quantity);
            _cartItems.Add(c);
        }

        public void RemoveAt(int index)
        {
            _cartItems.RemoveAt(index);
        }

        public void Clear()
        {
            _cartItems.Clear();
        }
    }
}