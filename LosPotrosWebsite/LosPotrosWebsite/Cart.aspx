<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="LosPotrosWebsite.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/LosPotrosCSS.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Chango&display=swap" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Los Potros Mexican Restaraunt - Cart Page</title>
</head>
<body class="background">
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
                        <a class="nav-link" href="OnlineOrder.aspx">Online Order</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="LoginPage.aspx">Login</a>
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
                <div class="col-sm-6">
                    <asp:ListBox ID="lboxCartSummary" runat="server" CssClass="Firstcart"></asp:ListBox>
                    
                </div>
                  <div class="col-sm-6">
                      <asp:Button ID="btnRemove" runat="server" Text="Remove Item" CssClass="btn tn-secondary mb-2 d-block" ForeColor="Black" BackColor="White" OnClick="btnRemove_Click" />
                      <asp:Button ID="btnEmpty" runat="server" Text="Empty Cart" CssClass="btn tn-secondary d-block" BackColor="White" OnClick="btnEmpty_Click" />
                </div>
            </div>

            <div class="row">
                <div class="col-sm-6">
                    <asp:Button ID="btnContinue" runat="server" Text="Continue Ordering" CssClass="btn tn-secondary d-block" OnClick="btnContinue_Click" BackColor="White" />
                 </div>
                <div class="col-sm-6">
                    <asp:Button ID="btnCheckout" runat="server" Text="Checkout" CssClass="btn tn-secondary d-block" OnClick="btnCheckout_Click" BackColor="White"/>
                    
                </div>
           </div>

        </div>
    </form>
</body>
</html>
