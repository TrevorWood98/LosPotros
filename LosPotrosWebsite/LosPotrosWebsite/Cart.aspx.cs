using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LosPotrosWebsite
{
    public partial class Cart : System.Web.UI.Page
    {

        //Create a private variable of type CartItemList called cart;
        private CartItemList cart;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Retrieve the car object on every single postback of this page.
            cart = CartItemList.GetCart();

            //Only on the first load of the page, add the cart items to the list control.
            if (!IsPostBack)
            {
                this.DisplayCart();
            }
        }

        private void DisplayCart()
        {
            //Remove all the current items from the listbox control
            lboxCartSummary.Items.Clear();

            //loop through the cart and add each item's display value to the list.
            for (int i = 0; i < cart.Count; i++)
            {
                lboxCartSummary.Items.Add(cart[i].Display());
            }
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/OnlineShopping.aspx");
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            if (cart.Count > 0)
            {
                Session["ShoppingStatus"] = "InProgress";

                if (Session["UserID"] != null)
                {

                    //Read the database for this user and retrieve the
                    //user's first, last , addr1 and 2, c/s/z to use as
                    //the billing address and to default into the shipping
                    //address
                    Response.Redirect("~/ShippingInfo.aspx");


                }
                else
                {
                    Response.Redirect("~/Login Page.aspx");
                }
            }
            else
            {

            }
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            //If the cart contains items and the user has selected an item,
            //then remove this item from the cart
            if(cart.Count > 0)
            {

                if(lboxCartSummary.SelectedIndex > -1)
                {
                    //Remove the selected item from the cart and re-display
                    //the cart
                    cart.RemoveAt(lboxCartSummary.SelectedIndex);
                    this.DisplayCart();
                }
                else
                {
                    //if no item was selected, notify the user to select and
                    //item to be removed.
                    
                }
            }
        }

        protected void btnEmpty_Click(object sender, EventArgs e)
        {
            if (cart.Count > 0)
            {
                cart.Clear();
                lboxCartSummary.Items.Clear();
            }
        }
    }
}