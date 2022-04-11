using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LosPotrosWebsite
{
    //The CartItem class represents a product that the user has added to the
    //shopping cart plus the quantity ordered.
    public class CartItem
    {
        //Constructors that create an empty CartItem object or one with values.
        public CartItem() { }

        public CartItem(Product product, int quantity)
        {
            this.Product = product;
            this.Quantity = quantity;
        }

        //These are public properties for a CartItem object.
        public Product Product { get; set; }
        public int Quantity { get; set; }

        //This method adds the quantity to the current quantity in the cart.
        public void AddQuantity(int quantity)
        {
            this.Quantity += quantity;
        }

        //This is a method that formats an item's name, quantity, and price in
        //a single line that can be used in the Cart.
        public string Display()
        {
            string displayString = string.Format("{0} ({1} at {2} each)",
                Product.ProductName,
                Quantity.ToString(),
                Product.UnitPrice.ToString("c"));
            return displayString;
        }
    }
}