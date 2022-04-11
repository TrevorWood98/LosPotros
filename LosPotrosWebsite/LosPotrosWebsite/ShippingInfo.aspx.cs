using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace LosPotrosWebsite
{
    public partial class ShippingInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["CurrentUser"] != null)
            {
                User currentuser = (User)Session["CurrentUser"];

                tboxSFirstName.Text = currentuser.FirstName.ToString();
                tboxSLastName.Text = currentuser.LastName.ToString();
                tboxSAddress.Text = currentuser.Address1.ToString();
                tboxSAddress2.Text = currentuser.Address2.ToString();
                tboxSCity.Text = currentuser.City.ToString();
                ddlState.SelectedValue = currentuser.StateID.ToString();
                tboxSZip.Text = currentuser.Zipcode.ToString();
            }

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            //Create our connection to the database using our credentials in web.config
            string strConn = ConfigurationManager.ConnectionStrings["F20_kstrevwooConnectionString"].ConnectionString;


            using (SqlConnection sqlConn = new SqlConnection(strConn))
            {
                SqlCommand InsertCmd = new SqlCommand("spInsertMyOrder", sqlConn);
                InsertCmd.CommandType = CommandType.StoredProcedure;
                //Create an input variable for every value we need to store in the order tables
                //order header information
                //Every Field on account creation page
                InsertCmd.Parameters.AddWithValue("@UserID", Session["UserID"].ToString());
            
                InsertCmd.Parameters.AddWithValue("@ShippingFirstName", tboxSFirstName.Text);
                InsertCmd.Parameters.AddWithValue("@ShippingLastName", tboxSLastName.Text);
                InsertCmd.Parameters.AddWithValue("@ShippingAddress1", tboxSAddress.Text);
                InsertCmd.Parameters.AddWithValue("@ShippingAddress2", tboxSAddress2.Text);
                InsertCmd.Parameters.AddWithValue("@ShippingCity", tboxSCity.Text);
                InsertCmd.Parameters.AddWithValue("@ShippingStateID", ddlState.SelectedValue);
                InsertCmd.Parameters.AddWithValue("@ShippingZip", tboxSZip.Text);

                //Create an output parameter to retrieve the assigned OH ID

                SqlParameter OHIDOutput = new SqlParameter("@OrderHeaderID", SqlDbType.Int);
                OHIDOutput.Direction = ParameterDirection.Output;
                InsertCmd.Parameters.Add(OHIDOutput);

                //Call our GetCartItemsData method to insert inems into a datatable from our cart.
                //Order Details table is what it will insert into
                InsertCmd.Parameters.Add("@OrderItems", SqlDbType.Structured).Value = GetCartItemsData();

                //page load event check if session variable is not null
                //if not null 

                try
                {
                    sqlConn.Open();
                    InsertCmd.ExecuteNonQuery();

                    Session["OrderHeaderID"] = OHIDOutput.Value.ToString();

                    Response.Redirect("~/ThankYouPage.aspx");
                }
                catch (Exception exc)
                {
                    lblMessage.Text = exc.Message;
               
                }

            }
        }

        private DataTable GetCartItemsData()
        {
            CartItemList cart = CartItemList.GetCart();

            //Instantiate our data table.
            DataTable dt = new DataTable();
            dt.Columns.Add("ProductID", typeof(int));
            dt.Columns.Add("Quantity", typeof(int));
            dt.Columns.Add("UnitPrice", typeof(decimal));

            //Loop through our cart items and add each to the data table
            for (int i = 0; i < cart.Count; i++)
            {
                dt.Rows.Add(cart[i].Product.ProductID, cart[i].Quantity, cart[i].Product.UnitPrice);
            }

            return dt;
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Cart.aspx");
        }
    }
}