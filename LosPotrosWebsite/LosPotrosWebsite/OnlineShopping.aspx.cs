using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace LosPotrosWebsite
{
    public partial class OnlineShopping : System.Web.UI.Page
    {
        private Product selectedProduct;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddToCart1_Click(object sender, EventArgs e)
        {

            //Street Tacos - Add To Cart
            selectedProduct = this.GetSelectedProduct(Convert.ToInt32(hidProductID1.Value));
            if(IsValid)
            {
                //Get the cart from the session state and the selected item in the cart
                CartItemList cart = CartItemList.GetCart();
                CartItem cartItem = cart[selectedProduct.ProductID];

                //check if this item is already in the cart, and if so, we will increase
                //the quantity. If not we will add the product to the cart.
                if(cartItem == null)
                {
                    //Add to cart
                    cart.AddItem(selectedProduct, Convert.ToInt32(tboxQuantity1.Text));
                }

                else
                {
                    //Product was already in the cart so add to the quantity.
                    cartItem.AddQuantity(Convert.ToInt32(tboxQuantity1.Text));
                }

                Response.Redirect("~/Cart.aspx");
            }
          
        }

        protected void btnAddToCart2_Click(object sender, EventArgs e)
        {


            //Street Tacos - Add To Cart
            selectedProduct = this.GetSelectedProduct(Convert.ToInt32(hidProductID2.Value));
            if (IsValid)
            {
                //Get the cart from the session state and the selected item in the cart
                CartItemList cart = CartItemList.GetCart();
                CartItem cartItem = cart[selectedProduct.ProductID];

                //check if this item is already in the cart, and if so, we will increase
                //the quantity. If not we will add the product to the cart.
                if (cartItem == null)
                {
                    //Add to cart
                    cart.AddItem(selectedProduct, Convert.ToInt32(tboxQuantity2.Text));
                }

                else
                {
                    //Product was already in the cart so add to the quantity.
                    cartItem.AddQuantity(Convert.ToInt32(tboxQuantity2.Text));
                }

                Response.Redirect("~/Cart.aspx");
            }

        }

        protected void btnQuantity3_Click(object sender, EventArgs e)
        {
            //Street Tacos - Add To Cart
            selectedProduct = this.GetSelectedProduct(Convert.ToInt32(hidProductID3.Value));
            if (IsValid)
            {
                //Get the cart from the session state and the selected item in the cart
                CartItemList cart = CartItemList.GetCart();
                CartItem cartItem = cart[selectedProduct.ProductID];

                //check if this item is already in the cart, and if so, we will increase
                //the quantity. If not we will add the product to the cart.
                if (cartItem == null)
                {
                    //Add to cart
                    cart.AddItem(selectedProduct, Convert.ToInt32(tboxQuantity3.Text));
                }

                else
                {
                    //Product was already in the cart so add to the quantity.
                    cartItem.AddQuantity(Convert.ToInt32(tboxQuantity3.Text));
                }

                Response.Redirect("~/Cart.aspx");
            }
        }

        protected void btnQuantity4_Click(object sender, EventArgs e)
        {
            //Street Tacos - Add To Cart
            selectedProduct = this.GetSelectedProduct(Convert.ToInt32(hidProductID5.Value));
            if (IsValid)
            {
                //Get the cart from the session state and the selected item in the cart
                CartItemList cart = CartItemList.GetCart();
                CartItem cartItem = cart[selectedProduct.ProductID];

                //check if this item is already in the cart, and if so, we will increase
                //the quantity. If not we will add the product to the cart.
                if (cartItem == null)
                {
                    //Add to cart
                    cart.AddItem(selectedProduct, Convert.ToInt32(tboxQuantity4.Text));
                }

                else
                {
                    //Product was already in the cart so add to the quantity.
                    cartItem.AddQuantity(Convert.ToInt32(tboxQuantity4.Text));
                }

                Response.Redirect("~/Cart.aspx");
            }
        }

        private Product GetSelectedProduct(int pdtID)
        {
           //Create a reference to our connection string to our database.
           string strConn = ConfigurationManager.ConnectionStrings["F20_kstrevwooConnectionString"].ConnectionString;
            using (SqlConnection sqlconn = new SqlConnection(strConn))
            {
                SqlDataAdapter sqlDA = new SqlDataAdapter("spSelectProductByID", sqlconn);
                sqlDA.SelectCommand.CommandType = CommandType.StoredProcedure;


                //Create 1 input parameter to pass the ProductID to the stored procedure.
                SqlParameter ProductIDInput = new SqlParameter("@ProductID", pdtID);
                ProductIDInput.Direction = ParameterDirection.Input;
                ProductIDInput.DbType = DbType.Int32;
                sqlDA.SelectCommand.Parameters.Add(ProductIDInput);

                DataSet ds = new DataSet();

                sqlDA.Fill(ds);

                Product p = new Product();
                p.ProductID = ds.Tables[0].Rows[0]["ProductID"].ToString();
                p.ProductName = ds.Tables[0].Rows[0]["ProductName"].ToString();
                p.ShortDesc = ds.Tables[0].Rows[0]["ShortDesc"].ToString();
                p.UnitPrice = Decimal.Parse(ds.Tables[0].Rows[0]["UnitPrice"].ToString());
              
                return p;
            }
        }
    }
}