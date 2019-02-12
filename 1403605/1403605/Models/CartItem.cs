namespace _1403605.Models
{
    public class CartItem
    {
        public CartItem(ProductItem product, int quantity)
        {
            this.ProductItem = product;
            this.Quantity = quantity;
        }

        public ProductItem ProductItem { get; set; }

        public int Quantity { get; set; }

        public void AddQuantity(int quantity)
        {
            this.Quantity += quantity;
        }

        public string Display()
        {
            string displayString = string.Format("{0} ({1} at {2})",
                ProductItem.Name,
                Quantity.ToString(),
                ProductItem.UnitPrice.ToString("c")
            );
            return displayString;
        }
    }
}