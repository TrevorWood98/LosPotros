<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="LosPotrosWebsite.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/LosPotrosCSS.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Chango&display=swap" rel="stylesheet" />
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Lost Potros Mexican Restaurant - Menu</title>
</head>
<body class="menufullbackground">
    <form id="form1" runat="server">
        <div class="container">
            <%-- JumbroTron with Heading and Logo --%>
            <div class=" jumbotron">

                <img src="Images/LostPotrosLogo.png" class="logoposition" />


            </div>

         <div class="sticky-top">
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
            </div>

            <%-- Menu Header --%>
            <div class="row text-center menubackground">
                <div class="col-sm-12">
                    <h1 class="menuborderheading">Menú</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3 text-center menubackground">
                    <h3 class="changofont menuheadingsize">Appetizer</h3>
                    <p><strong>Cheese Dip</strong></p>
                    <p><strong>Cheese Nachos</strong></p>
                    <p><strong>White Cold Dip</strong></p>
                    <p><strong>Mix Dip</strong></p>
                    <p><strong>Cowboy Dip</strong></p>
                    <p>
                        <strong>Nacho Fajita</strong>
                    </p>

                    <p><strong>Chicken Nachos</strong></p>
                    <p><strong>Chiles Toreadors</strong></p>
                    <p><strong>Nachos Deluxe</strong></p>
                    <p><strong>Fajita Jalisco</strong></p>
                    <p><strong>Potros Dip</strong></p>
                    <p><strong>Shrimp Toreados</strong></p>
                    <p><strong>Guacamole Special</strong></p>
                    <p><strong>Guacamole</strong></p>

                </div>


                <div class="col-sm-3 text-center menubackground">
                    <h3 class="changofont menuheadingsize">Price</h3>
                    <p>$2.99</p>
                    <p>$6.99</p>
                    <p>$2.49</p>
                    <p>$7.99</p>
                    <p>$2.99</p>
                    <p>$9.99</p>
                    <p>$2.99</p>
                    <p>$6.99</p>
                    <p>$6.99</p>
                    <p>$3.99</p>
                    <p>$7.99</p>
                    <p>$1.99</p>
                    <p>$3.99</p>
                    <p>$4.99</p>
                   
                    <img src="Images/FajitaNachosLP.png" alt="Fajitas Nachos" class="d-block mx-auto " />
                </div>
                <%-- Menu Image and Specials --%>
                <div class="col-sm-6 justify-content-center">
                    <img src="Images/ChimichangaPlate.png" class="img-fluid d-block mx-auto menuimagesize" alt="Chimichanga Plate" />
                    <div class="specialborderbox">
                        <h3 class="changofont specialheadingalign">Specials</h3>
                        <p class="specialheadingalign">
                            Our 3 mouth-watering lunch specials offer grilled chicken 
                    on a bed of rice with an assortment of fresh vegetables, 
                    cheese and tortillas.
                        </p>
                    </div>
                    <div>
                        <span class="yelp-review" data-review-id="K3WEz8h0lm08oAPZP0Apww" data-hostname="www.yelp.com">Read <a href="https://www.yelp.com/user_details?userid=h4t7vsH_CVQhPm3MNts-ZQ" rel="nofollow noopener">Valerie T.</a>'s <a href="https://www.yelp.com/biz/los-potros-mexican-restaurant-blackwell?hrid=K3WEz8h0lm08oAPZP0Apww" rel="nofollow noopener">review</a> of <a href="https://www.yelp.com/biz/zevy1kbzxKnHvqZbT1J9HA" rel="nofollow noopener">Los Potros Mexican Restaurant</a> on <a href="https://www.yelp.com" rel="nofollow noopener">Yelp</a><script src="https://www.yelp.com/embed/widgets.js" type="text/javascript" async></script></span>
                    </div>
                </div>
            </div>
            <%-- Row #2 --%>
            <div class="row menubackground">
                <div class="col-sm-3">
                    <h3 class="changofont menuheadingsize ">A La Carte</h3>
                    <p><strong>Chicken Burrito</strong></p>
                    <p><strong>Beef Burrito</strong></p>
                    <p><strong>Bean Burrito</strong></p>
                     <p><strong>Chalupa</strong></p>
                    <p><strong>Beef Tostada</strong></p>
                </div>
                <div class="col-sm-3 text-center">
                    <h3 class="changofont menuheadingsize">Price</h3>
                    <p>$3.49/$6.49</p>
                    <p>$3.49/$7.99</p>
                    <p>$3.49/$6.49</p>
                    <p>$3.99/$7.99</p>
                    <p>$3.99/$7.99</p>
                </div>
                <div class="col-sm-3 menufullbackground">
                    <h3 class="changofont menuheadingsize">Salads</h3>
                    <p><strong>Tossed Salad</strong></p>
                    <p><strong>Guacamole Salad</strong></p>
                    <p><strong>Chicken Salad</strong></p>
                     <p><strong>Fajita Salad</strong></p>
                    <p><strong>Valarta Salad</strong></p>
                     <p><strong>Papas Locas</strong></p>
                </div>
                <div class="col-sm-3 text-center menufullbackground">
                    <h3 class="changofont menuheadingsize">Price</h3>

                    <p>$3.99</p>
                    <p>$4.99</p>
                    <p>$9.99</p>
                    <p>4.99</p>
                    <p>$9.99</p>
                    <p>$9.99</p>
                </div>
            </div>

            <div class="row background menuimage2 justify-content-center">
             
                <div class="col-sm-6">
                    <span class="yelp-review" data-review-id="5qpAeqD3uVd6gxQCDKcS1g" data-hostname="www.yelp.com">Read <a href="https://www.yelp.com/user_details?userid=jJkmlA5zNj0-zXmR94aQMw" rel="nofollow noopener">Dani G.</a>'s <a href="https://www.yelp.com/biz/los-potros-mexican-restaurant-blackwell?hrid=5qpAeqD3uVd6gxQCDKcS1g" rel="nofollow noopener">review</a> of <a href="https://www.yelp.com/biz/zevy1kbzxKnHvqZbT1J9HA" rel="nofollow noopener">Los Potros Mexican Restaurant</a> on <a href="https://www.yelp.com" rel="nofollow noopener">Yelp</a><script src="https://www.yelp.com/embed/widgets.js" type="text/javascript" async></script></span>
                </div>
                  <div class="col-sm-3 menufullbackground">
                    <h3 class="changofont menuheadingsize">Steaks/Beef</h3>
                    <p><strong>Texas Ribey</strong></p>
                    <p><strong>Steak Mexicano</strong></p>
                    <p><strong>Chile Colorado</strong></p>
                     <p><strong>Carne Asada</strong></p>
                    <p><strong>Tampiqueña Steak</strong></p>
                     <p><strong>12 o.z. Ribeye</strong></p>
                </div>
                <div class="col-sm-3 text-center menufullbackground">
                    <h3 class="changofont menuheadingsize">Price</h3>

                    <p>$15.99</p>
                    <p>$14.99</p>
                    <p>$10.99</p>
                    <p>$14.99</p>
                    <p>$15.99</p>
                    <p>$14.99</p>
                </div>
            </div>

            </div>
        
    </form>
</body>
</html>
