<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShippingInfo.aspx.cs" Inherits="LosPotrosWebsite.ShippingInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/LosPotrosCSS.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Chango&display=swap" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Los Potros Mexican Restaraunt - Online Order</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
               <%-- JumbroTron with Heading and Logo --%>  
            <div class=" jumbotron">

                <img src="Images/LostPotrosLogo.png" class="logoposition" />


            </div>

            <%-- Navigation Bar --%>
            <nav class="navbar navbar-expand-sm navbarcolor navbar-light justify-content-center">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="Home%20Page.aspx">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Menu.aspx">Menu</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ContactUs.aspx">Contact Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="AboutUs.aspx">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="OnlineShopping.aspx">Online Order</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Login Page.aspx">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="https://www.facebook.com/Los-Potros-Mexican-Restaurant-124877644356054/?ref=page_internal"
                            target="blank" title="Facebook">
                            <img src="Images/FacebookIcon.png" class="facebooklogo" />
                        </a>
                    </li>
                </ul>

            </nav>
            <div class="row">
                <div class="col-sm-12">
                    <h2>Shipping Information</h2>
                </div>
            </div>
            
              <div class="row">
                <div class="col-sm-4 rightalignlabel">
                   <label>First Name</label>
                </div>
                  <div class="col-sm-4">
                      <asp:TextBox ID="tboxSFirstName" runat="server"></asp:TextBox>
                </div>
                  <div class="col-sm-4">
                      <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ErrorMessage="Please Enter First Name" ControlToValidate="tboxSFirstName" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 rightalignlabel">
                   <label>Last Name</label>
                </div>
                  <div class="col-sm-4">
                      <asp:TextBox ID="tboxSLastName" runat="server"></asp:TextBox>
                </div>
                  <div class="col-sm-4">
                      <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ErrorMessage="Please Enter Last Name" ControlToValidate="tboxSLastName" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 rightalignlabel">
                   <label>Address</label>
                </div>
                  <div class="col-sm-4">
                      <asp:TextBox ID="tboxSAddress" runat="server"></asp:TextBox>
                </div>
                  <div class="col-sm-4">
                      <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Please Enter Address" ControlToValidate="tboxSAddress" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-4 rightalignlabel">
                   <label>Suite or Apt</label>
                </div>
                  <div class="col-sm-4">
                      <asp:TextBox ID="tboxSAddress2" runat="server"></asp:TextBox>
                </div>
                  <div class="col-sm-4">
                      
                </div>
            </div>

            <div class="row">
                <div class="col-sm-4 rightalignlabel">
                   <label>City</label>
                </div>
                  <div class="col-sm-4">
                      <asp:TextBox ID="tboxSCity" runat="server"></asp:TextBox>
                </div>
                  <div class="col-sm-4">
                      <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="Please Enter City" ControlToValidate="tboxSCity" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-4 rightalignlabel">
                   <label>State</label>
                </div>
                  <div class="col-sm-4">
                      <asp:DropDownList ID="ddlState" runat="server" DataSourceID="sdsStates" DataTextField="StateAbbr" DataValueField="StateID">
                       
                      </asp:DropDownList>
                      <asp:SqlDataSource ID="sdsStates" runat="server" ConnectionString="<%$ ConnectionStrings:F20_kstrevwooConnectionString %>" SelectCommand="spSelectAllStates" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </div>
                  <div class="col-sm-4">
                      <asp:RequiredFieldValidator ID="rfvState" runat="server" ErrorMessage="Please Enter State" ControlToValidate="ddlState" Display="Dynamic" ForeColor="Red" InitialValue="1"></asp:RequiredFieldValidator>
                </div>
            </div>

            
                    <div class="row ">
                        <div class="col-sm-4  rightalignlabel">
                             <label>
                                 Zip
                             </label>
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox ID="tboxSZip" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <%-- Required Field Validator --%>
                            <asp:RequiredFieldValidator ID="rfvSZip" runat="server" ErrorMessage="Please Enter Zip Code." ForeColor="Red" ControlToValidate="tboxSZip" Display="Dynamic"></asp:RequiredFieldValidator>
                            <%-- Regular Expression Validator --%>
                            <asp:RegularExpressionValidator ID="revSZip" runat="server" ErrorMessage="Enter Valid Zip Code" ControlToValidate="tboxSZip" Display="Dynamic" ForeColor="Red" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>

                        </div>

                    </div>
               <div class="row">
                <div class="col-sm-6 offset-sm-6">
                    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                </div>
                
                </div>

            <div class="row">
                <div class="col-sm-4 offset-sm-4">
                    <asp:Button ID="btnConfirm" runat="server" Text="Confirm" class="btn btn-secondary" OnClick="btnConfirm_Click"/>
                </div>
                  <div class="col-sm-4">
                      <asp:Button ID="btnBack" runat="server" Text="Back To Cart" class="btn btn-secondary" OnClick="btnBack_Click" />
                </div>
               
            </div>
        </div>
    </form>
</body>
</html>
