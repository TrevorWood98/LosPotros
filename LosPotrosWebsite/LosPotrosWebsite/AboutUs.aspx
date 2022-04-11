<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="LosPotrosWebsite.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/LosPotrosCSS.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Chango&display=swap" rel="stylesheet" />
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet" />
    <title>Los Potros Mexican Restaurant - About Us</title>
</head>
<body>
    <form id="form1" runat="server">

        <div id="fb-root"></div>

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
            <div class="row background">
                <div class="col-sm-12">
                    <h1 class="aboutusheading">Who We Are</h1>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12 background">
                    <img src="Images/WaitersMasksLP.jpg" alt="Our Great Staff" class="img-fluid d-block mx-auto aboutusimage" />
                </div>
            </div>

            <div class="row  aboutustext text-center">
                <div class="col-sm-6 aboutusbackground">
                    <p class="aboutusparagraph1">
                        In 2001, the Lopez brothers started Los Potros in Blackwell Oklahoma.
                        At first, it was family and friends working beside each other providing the best service
                    they could to both locals and travelers drving past on I-35. Soon, word spread
                    about the great enviroment and food that Los Potros had to offer and the customer
                    base was spread. Since then, customer count has picked up tremendously
                        and our business is bettter than ever! We are always in search
                        of what to add to the menu and what we can improve to make our
                        place feel like home. Approaching 20 years of operation, Los Potros still offers the same great
             experience, as well as food. Los Potros continues to offer supreme service along with
                    much tradition. From delicious margaritas to hot fajitas fresh off the pan, we are determined to 
                    give our customers the food and experience they enjoy.
                    </p>
                     
                    </div>
                    <div class="col-sm-6 aboutustext text-align-center aboutusheading2 background">
                      <h2>We Are Here To Serve You!</h2>
                    <img src="Images/BuildingLP.jpg" alt="Los Potros Building" class="img-fluid d-block mx-auto aboutusbest1"  />
                     
                </div>
              
            </div>
        
          

             <div class="row aboutustext text-center ">
                <div class="col-sm-12 aboutusbackground">
                    <p class="aboutusparagraph2">
                       During the recent event of COVID-19, we are still in operation with only a few changes. Every waiter/ waitress
                        of ours is required to wear a mask whenever they are working. Our customers are not required
                        to wear a mask, but we do strongly encourage wearing one. We will also attempt to spread any
                        visitor throughout the building while they are seated to stay in compliance with the 
                        6-foot rule. Even with these recent changes, our family looks forward to giving you a wonderful
                        experience with great food. From delicious margaritas to hot fajita fresh off the pan, we are determined to 
                    give our customers the food and experience they enjoy. Here's to another
                        20 years! Come and see us here at Los Potros!
                    </p>
                   
                </div>
            </div>

            <div class="row background">
                <div class="col-sm-6 embed-responsive embed-responsive-1by1 align-content-center aboutusvideo ">
                    <iframe src="https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2F536711866429324%2Fvideos%2F3659975904032066%2F&show_text=0&width=560" class="embed-responsive-item aboutusvideo align-content-center" ></iframe>

                </div>
              <div class="row background"></div>
                <div class="col-sm-6 ">
                    <img src="Images/WaitersMasks2LP.png" alt="Our Waiters With Masks" class="img-fluid d-block mx-0 aboutusimage3 align-content-center" />
                </div>
            </div>
            
              
            </div>


      

    </form>
</body>
</html>
