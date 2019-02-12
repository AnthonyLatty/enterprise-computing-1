namespace _1403605.Models
{
    public class CartItem
    {
        public CartItem(ProductItem product, int quantity)
        {
            ProductItem = product;
            Quantity = quantity;
        }

        public ProductItem ProductItem { get; set; }

        public int Quantity { get; set; }

        public void AddQuantity(int quantity)
        {
            Quantity += quantity;
        }

        public string Display()
        {
            var displayString = $"{ProductItem.Name} ({Quantity.ToString()} at {ProductItem.UnitPrice:c})";
            return displayString;
        }
    }
}