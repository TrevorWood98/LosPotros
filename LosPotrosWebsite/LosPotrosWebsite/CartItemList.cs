using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LosPotrosWebsite
{
    public class CartItemList
    {
        //This is an internal list of items and the constructor that 
        //instantiates it (i.e., creates an instance of it we can use).

        //This is a private field called cartItems.
        private List<CartItem> cartItems;

        //This constructor will initialize the private field cartItems with
        //a new List<CartItem> object.
        public CartItemList()
        {
            cartItems = new List<CartItem>();
        }

        //This is a read-only property that returns the number of items in the 
        //internal list.
        public int Count
        {
            get { return cartItems.Count; }
        }

        //The indexers locate items in the internal list by index or product id.
        public CartItem this[int index]
        {
            get { return cartItems[index]; }
        }
     
        public CartItem this[string id]
        {
            get 
            {
                foreach (CartItem c in cartItems)
                    if (c.Product.ProductID == id) return c;
                return null;
            }
        }

        //This is a static method to get the cart object from session state.
        public static CartItemList GetCart()
        {
            CartItemList cart = (CartItemList)HttpContext.Current.Session["Cart"];
            if (cart == null)
            {
                HttpContext.Current.Session["Cart"] = new CartItemList();
            }
            return (CartItemList)HttpContext.Current.Session["Cart"];
        }

        //This method adds items in the internal list.
        public void AddItem(Product product, int quantity)
        {
            CartItem c = new CartItem(product, quantity);
            cartItems.Add(c);
        }

        //This method removes items in the internal list.
        public void RemoveAt (int index)
        {
            cartItems.RemoveAt(index);
        }

        //This method clears all items in the internal list.
        public void Clear()
        {
            cartItems.Clear();
        }
    }
}