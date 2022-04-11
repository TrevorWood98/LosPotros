<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home Page.aspx.cs" Inherits="LosPotrosWebsite.Home_Page" %>

<!DOCTYPE html>
<%-- C# PROJECT PROTOTYPE --%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/LosPotrosCSS.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Chango&display=swap" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Los Potros Mexican Restaurant - Online Order</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
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
            <%-- Pictures and Heading with paragraph --%>
            <div class="row" id="row1">
                <div class="col-sm-6">
                    <div class="infoborder">
                        <h3 class="catchphrase ">We have everything to offer including fajitas, tacos, margaritas, and much more.</h3>
                        <h5 class="catchphrase">Give us a call or visit us today to try one of these!</h5>
                        <br />
                        <p class="homeparagraph infoborder">
                            Phone: 580-262-9635
                            <br />
                            4501 W White Ave, Blackwell, OK 74631
                        </p>
                    </div>
                </div>
                <div class="col-sm-6 justify-content-sm-center">
                    <div id="HomePageC" class="carousel slide " data-ride="carousel" data-interval="4000">
                        <%-- Indicators --%>
                        <ol class="carousel-indicators">
                            <li data-target="#HomePageC" data-slide-to="0" class="active"></li>
                            <li data-target="#HomePageC" data-slide-to="1"></li>
                            <li data-target="#HomePageC" data-slide-to="2"></li>

                        </ol>
                        <%-- Wrapper for slides --%>
                        <div class="carousel-inner">
                            <%-- Image 1 --%>
                            <div class="carousel-item active">
                                <a href="AboutUs.aspx">
                                    <img src="Images/StaffLP.jpg" alt="Los Potros Staff" class=" carousel-image-size img-fluid d-block mx-auto carousel-img-size" />

                                    <div class="carousel-caption">
                                        <h4 class="text-center">About Us</h4>
                                    </div>
                                </a>
                            </div>
                            <%-- Image 2 --%>
                            <div class="carousel-item">
                                <a href="Menu.aspx">
                                    <img src="Images/RonaMargLP.jpg" alt="Corona Light Margerita" class="carousel-image-size img-fluid d-block mx-auto carousel-img-size" />
                                    <div class="carousel-caption">
                                        <h4 class="text-center">Our Menu</h4>
                                    </div>
                                </a>
                            </div>
                            <%-- Image 3 --%>
                            <div class="carousel-item">
                                <img src="Images/CateringVanLP.jpg" alt="Catering Van" class="carousel-image-size img-fluid d-block mx-auto carousel-img-size" />
                            </div>
                            <%-- Image 4 --%>
                            <div class="carousel-item">
                                <img src="Images/StreetTacosLP.jpg" alt="Street Tacos" class="carousel-image-size img-fluid d-block mx-auto carousel-img-size" />
                            </div>
                        </div>
                        <%-- Previous and Next Buttons --%>
                        <%-- Previous --%>
                        <a class="carousel-control-prev" href="#HomePageC" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <%-- Next --%>
                        <a class="carousel-control-next" href="#HomePageC" role="button" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                            <span class="sr-only">Next</span>
                        </a>

                    </div>
                </div>
            </div>

            <div class="row" id="row2">
                <div class="col-sm-12">
                    <br />
                </div>
            </div>
            <div class="row background">
                <div class="col-sm-12 text-center">
                    <h4 class="calenderheading">Specials & Hours For September 2020</h4>
                </div>
            </div>

            <div class="row  " id="row3">
                <div class="col-sm-6 ">
                    <asp:Calendar ID="homepageCalender" runat="server" BackColor="White" BorderColor="Black" BorderWidth="1px" class="calendercss calendermargin" Font-Size="9pt" ForeColor="Black" Height="70%" NextPrevFormat="FullMonth" Width="70%" BorderStyle="Solid" FirstDayOfWeek="Sunday">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="14pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </div>
                <div class="col-sm-6" id="row4">

                    <img src="Images/FriedVeggiesandGuacLP.jpg" alt="fried veggies and guac" class="img-fluid d-block mx-auto vegimg" />
                </div>


            </div>



            <div class="row background">
                <div class="col-sm-4">
                    <h5 class="calenderheading createaccheading">Great Margaritas</h5>
                    <img src="Images/margarita2LP.jpg" alt="Flavorful Margarita" class=" d-block mx-auto btmpicborder" />
                </div>
                <div class="col-sm-4">
                    <h5 class="calenderheading createaccheading">Fantastic Staff</h5>
                    <img src="Images/waiterwithfoodLP.jpg" alt="Waiter With Food" class=" d-block mx-auto btmpicborder" />

                </div>
                <div class="col-sm-4">
                    <h5 class="calenderheading createaccheading">Excellent Experience</h5>
                    <img src="Images/CreamFaceLP.jpg" alt="Cream in the Face" class="d-block mx-auto" />
                </div>
            </div>

            <div class="row background">
                <div class="col-sm-12">
                    <br />
                </div>
            </div>

            <div class="row background">
                <div class="col-sm-4">
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-10 embed-responsive embed-responsive-4by3">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3194.1550307963576!2d-97.33988368496811!3d36.814804779945476!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87b06eb2defc5313%3A0xea271118b2ba3551!2sLos%20Potros%20Mexican%20Restaurant!5e0!3m2!1sen!2sus!4v1601422891220!5m2!1sen!2sus" class="embed-responsive"></iframe>
                    </div>
                    <div class="col-sm-1">

                    </div>
                </div>
                <div class="col-sm-4 cutextcolor text-center ">
                    <h3>Los Potros Mexican Restaurant</h3>
                    <p>4501 W White Ave</p>
                    <p>Blackwell, Oklahoma 74631</p>

                    <h3>Call Us:</h3>
                    <p>(580) 262-9635</p>
                    </div>
                <div class="col-sm-4 cutextcolor text-center">

                    <h3>Hours of Operation</h3>

                    <p>Monday    11AM-9:30PM</p>

                    <p>Tuesday   11AM–9:30PM</p>

                    <p>Wednesday 11AM–9:30PM</p>

                    <p>Thursday	 11AM–9:30PM</p>

                    <p>Friday	 11AM–10PM</p>

                    <p>Saturday	 11AM–10PM</p>

                    <p>Sunday	 11AM–9:30PM</p>
                </div>

            </div>



        </div>

    </form>
</body>
</html>
