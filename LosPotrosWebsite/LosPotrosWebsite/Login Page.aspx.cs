using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace LosPotrosWebsite
{
    public partial class Login_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void textboxUsername_TextChanged(object sender, EventArgs e)
        {

        }

        protected void buttonLogin_Click(object sender, EventArgs e)
        {
            //The IsValid makes sure all validation has passed on the page
            if (IsValid)
            {
                //You must add 3 namespaces to use SQLServer from C#
                //using System.Data;  using System.Data.SqlClient;    using System.Configuration;


                //Create a reference to the connection string we previously stored in
                //our web.config file 
                string strConn = ConfigurationManager.ConnectionStrings["F20_kstrevwooConnectionString"].ToString();

                using (SqlConnection sqlConn = new SqlConnection(strConn))
                {
                    SqlDataAdapter sqlDA = new SqlDataAdapter("spSelectUserByCredentials", sqlConn);
                    sqlDA.SelectCommand.CommandType = CommandType.StoredProcedure;


                    //Create 2 parameters to pass to the stored procedure for username and password
                    SqlParameter LoginUsername = new SqlParameter("@Username", textboxUsername.Text);
                    LoginUsername.Direction = ParameterDirection.Input;
                    LoginUsername.DbType = DbType.String;
                    sqlDA.SelectCommand.Parameters.Add(LoginUsername);


                    //Create a password parameter
                    SqlParameter LoginPassword = new SqlParameter("@UserPassword", textboxPassword.Text);
                    LoginPassword.Direction = ParameterDirection.Input;
                    LoginPassword.DbType = DbType.String;
                    sqlDA.SelectCommand.Parameters.Add(LoginPassword);


                    //Create a dataset to hold the results of our stored procedure
                    //We are now in the data set
                    DataSet ds = new DataSet();

                    //To exedute a SQLDataAdapter, you use the Fill(); method
                    //Will look at all the things we've defined when it gets to the Fill();
                    sqlDA.Fill(ds);


                    //Now we check if there are any rows in our dataset. If there are, then it
                    // here should only be 1 row in this case because it is our login credentials
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        //Login was successful
                        //Create a copy of the user class
                        User currentuser = new User();

                        currentuser.UserID = Convert.ToInt32(ds.Tables[0].Rows[0]["UserID"]);
                        Session["UserID"] = Convert.ToInt32(ds.Tables[0].Rows[0]["UserID"]);
                        currentuser.FirstName = ds.Tables[0].Rows[0]["FirstName"].ToString();
                        currentuser.LastName = ds.Tables[0].Rows[0]["LastName"].ToString();
                        currentuser.Address1 = ds.Tables[0].Rows[0]["Address1"].ToString();
                        currentuser.Address2 = ds.Tables[0].Rows[0]["Address2"].ToString();
                        currentuser.City = ds.Tables[0].Rows[0]["City"].ToString();
                        currentuser.StateID = Convert.ToInt32(ds.Tables[0].Rows[0]["StateID"]);
                        currentuser.Zipcode = ds.Tables[0].Rows[0]["Zipcode"].ToString();
                        currentuser.PhoneNumber = ds.Tables[0].Rows[0]["PhoneNumber"].ToString();
                        currentuser.Username = ds.Tables[0].Rows[0]["Username"].ToString();
                        currentuser.UserPassword = ds.Tables[0].Rows[0]["UserPassword"].ToString();
                        currentuser.RecoveryEmail = ds.Tables[0].Rows[0]["RecoveryEmail"].ToString();

                       currentuser.StateAbbr = ds.Tables[0].Rows[0]["StateID"].ToString();
                       
                        //Multiview needs an adjustment for the textboxes 

                        textboxMUserID.Text = ds.Tables[0].Rows[0]["UserID"].ToString();
                        textboxMFirstName.Text = ds.Tables[0].Rows[0]["FirstName"].ToString();
                        textboxMLastName.Text = ds.Tables[0].Rows[0]["LastName"].ToString();
                        textboxMAddress1.Text = ds.Tables[0].Rows[0]["Address1"].ToString();
                        textboxMAddress2.Text = ds.Tables[0].Rows[0]["Address2"].ToString();
                        textboxMCity.Text = ds.Tables[0].Rows[0]["City"].ToString(); 
                       ddlStateModify.SelectedValue = ds.Tables[0].Rows[0]["StateID"].ToString();
                        textboxMZip.Text = ds.Tables[0].Rows[0]["Zipcode"].ToString();
                        textboxMPhone.Text = ds.Tables[0].Rows[0]["PhoneNumber"].ToString();
                        textboxMUsername.Text = ds.Tables[0].Rows[0]["Username"].ToString();
                        textboxMPassword.Text = ds.Tables[0].Rows[0]["UserPassword"].ToString();
                        textboxMRecovery.Text = ds.Tables[0].Rows[0]["RecoveryEmail"].ToString();



                        //save the current user information from this instance of the User class
                        //into a Session variable

                        Session["CurrentUser"] = currentuser;



                        //Redirect back to Modification Page

                        Response.Redirect("~/ShippingInfo.aspx");

                            //Fill the controls on this View with user account info.
                            textboxMFirstName.Text = currentuser.FirstName;
                            textboxMLastName.Text = currentuser.LastName;
                            textboxMAddress1.Text = currentuser.Address1;
                            textboxMAddress2.Text = currentuser.Address2;
                            textboxMCity.Text = currentuser.City;
                           ddlStateModify.SelectedValue = Convert.ToString(currentuser.StateID);
                            textboxMZip.Text = Convert.ToString(currentuser.Zipcode);
                            textboxMPhone.Text = currentuser.PhoneNumber;
                            textboxMUsername.Text = currentuser.Username;
                            textboxMPassword.Text = currentuser.UserPassword;
                        
                      
                    }

                    else
                    {
                        //Login not successful
                        mviewLoginProcess.ActiveViewIndex = 0;
                        labelCreateSuccess.Text = "Invalid Login Credentials. Please Try Again.";

                    }

                }
            }



        }

        protected void linkbuttonCreateAcc_Click(object sender, EventArgs e)
        {
            mviewLoginProcess.ActiveViewIndex = 1;
        }

        protected void buttonUpdate_Click(object sender, EventArgs e)
        {
            if (IsValid == true)
            {

                mviewLoginProcess.ActiveViewIndex = 0;
                labelCreateSuccess.Text = "Account information updated successfully.";
            }
        }

        protected void buttonSubmit_Click(object sender, EventArgs e)
        {
            mviewLoginProcess.ActiveViewIndex = 0;
            labelInvalidMessage.Text = "";
            labelCreateSuccess.Text = "Account Successfully Created!";
            textboxAddress1.Text = "";
            textboxAddress2.Text = "";
            texboxAptNumber.Text = "";
            textboxEmail.Text = "";
            textboxFirstName.Text = "";
            textboxLastName.Text = "";
            textboxNewPassword.Text = "";
            textboxPassword.Text = "";
            textboxUsername.Text = "";
            textboxCity.Text = "";
            ddlState.SelectedIndex = 0;
            textboxPhoneNumber.Text = "";
            textboxZip.Text = "";
            textboxRecovery.Text = "";


        }

        protected void textboxMEmail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlStateModify_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
