<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="LosPotrosWebsite.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/LosPotrosCSS.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Chango&display=swap" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Lost Potros Mexican Restaurant - Contact Us</title>
</head>
<body>
    <form id="form1" runat="server">
         <div class="container">
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
                <div class="col-sm-8 embed-responsive embed-responsive-4by3">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3194.1550307963576!2d-97.33988368496811!3d36.814804779945476!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87b06eb2defc5313%3A0xea271118b2ba3551!2sLos%20Potros%20Mexican%20Restaurant!5e0!3m2!1sen!2sus!4v1600197267799!5m2!1sen!2sus" class="embed-responsive"></iframe>
                </div>
                <div class="col-sm-4 background cutextcolor center-text ">
                    <h3>Los Potros Mexican Restaurant</h3>
                    <p>4501 W White Ave</p>
                    <p>Blackwell, Oklahoma 74631</p>

                    <h3>Call Us:</h3>
                    <p>(580) 262-9635</p>

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
            <div class="row background cutextcolor">
                <div class="col-sm-12">
                <h3>Email Us Today: </h3>
                </div>
            </div>
            <%-- Row for First Name --%>
            <div class="row cutextcolor background">
                <div class="col-sm-3 text-left background">
                    <label">First Name:</label>
                </div>
                <div class="col-sm-3 background">
                    <asp:TextBox ID="tboxFirstName" runat="server"></asp:TextBox>
                </div>
            </div>
             <div class="row background"><div class="col-sm-12"></div> <br /></div>
            <%-- Row for Last Name --%>
            <div class="row cutextcolor background">
                 <div class="col-sm-3 text-left background">
                    <label">Last Name:</label>
                </div>
                <div class="col-sm-3">
                    <asp:TextBox ID="tboxLastName" runat="server"></asp:TextBox>
                </div>
            </div>
               <div class="row background"><div class="col-sm-12"></div> <br /></div>
             <%-- Row for Phone Number --%>
            <div class="row cutextcolor background">
                 <div class="col-sm-3 text-left background">
                    <label">Phone Number:</label>
                </div>
                <div class="col-sm-3 background">
                    <asp:TextBox ID="tboxPhone" runat="server"></asp:TextBox>
                </div>
            </div>
             <div class="row background"><div class="col-sm-12"></div> <br /></div>
            <%-- Row for E-Mail Address --%>
            <div class="row cutextcolor background">
                 <div class="col-sm-3 text-left background">
                    <label">E-Mail Address:</label>
                </div>
                <div class="col-sm-3 background">
                    <asp:TextBox ID="tboxEMail" runat="server"></asp:TextBox>
                </div>
            </div>
              <div class="row background"><div class="col-sm-12"></div> <br /></div>

            <%-- My Submit Button --%>
           <div class="background row">
               <div class="col-sm-6 background">
                   <asp:Button ID="buttonSubmit" runat="server" Text="Submit" />
               </div>
           <div class="row background"><div class="col-sm-12"></div> <br /></div>
        </div>
            </div>
    </form>
</body>
</html>
