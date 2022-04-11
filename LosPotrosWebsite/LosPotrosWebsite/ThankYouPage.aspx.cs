using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LosPotrosWebsite
{
    public partial class ThankYouPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                lblThankYouMessage.Text = "Thank you for your Order. Your order number is " + Session["OrderHeaderID"];
            }
            
        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/OnlineShopping.aspx");
        }
    }
}