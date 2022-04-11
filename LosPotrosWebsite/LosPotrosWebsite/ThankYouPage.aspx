<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThankYouPage.aspx.cs" Inherits="LosPotrosWebsite.ThankYouPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/LosPotrosCSS.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Chango&display=swap" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Los Potros Mexican Restaraunt - Thank You </title>
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
                <div class="col-sm-12 text-center">
                    <h2>Thank You For Your Order!!!</h2>
                </div>
            </div>
            <div class="row">

                <div class="col-sm-6 text-center ">
                    <asp:Label ID="lblThankYouMessage" runat="server" Text=""></asp:Label>
                </div>
                <div class="col-sm-6 text-center">
                    <asp:Button ID="btnOrder" runat="server" Text="Continue Ordering" OnClick="btnOrder_Click" />
                </div>
            </div>


        </div>
    </form>
</body>
</html>
