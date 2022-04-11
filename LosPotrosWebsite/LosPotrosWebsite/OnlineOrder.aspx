<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnlineOrder.aspx.cs" Inherits="LosPotrosWebsite.OnlineOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/LosPotrosCSS.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Chango&display=swap" rel="stylesheet" />
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Los Potros Mexican Restaurant - Online Order</title>
</head>
<body class="orderbackground">
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
                    <li class ="nav-item">
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

            <div class="row background">
                <div class="col-sm-12 onlineorderheading">
                    <h2 class="aboutusheading">Online Order</h2>
                </div>
            </div>

            <div class="row background catlabel text-center">
                <div class="col-sm-4">
                    <h5>Appetizers</h5>
                </div>
                <div class="col-sm-4">
                    <h5>Quantity</h5>
                </div>
                <div class="col-sm-4">
                    <h5>Add to Cart</h5>
                </div>
            </div>

            <div class="row background ">
                <div class="col-sm-4 text-center ordermargin">
                    <asp:DropDownList ID="dropdownAppetizers" runat="server">
                        <asp:ListItem>Cheese Dip</asp:ListItem>
                        <asp:ListItem>Cheese Nachos</asp:ListItem>
                        <asp:ListItem>White Cold Dip</asp:ListItem>
                        <asp:ListItem>Beef and Beans Nachos</asp:ListItem>
                        <asp:ListItem>Bean Dip</asp:ListItem>
                        <asp:ListItem>Beef Nachos</asp:ListItem>
                        <asp:ListItem Selected="True">None</asp:ListItem>
                    </asp:DropDownList>



                </div>
                <div class="col-sm-4 text-center ordermargin">
                    <asp:TextBox ID="textboxQuantityApp" runat="server" Width="54px"></asp:TextBox>
                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:Button ID="buttonAddToCart" runat="server" Text="Add To Cart" />
                </div>
            </div>


            <div class="row background">
                <div class="col-sm-4 text-center ordermargin">
                    <asp:DropDownList ID="dropdownAppetizers2" runat="server">
                        <asp:ListItem>Cheese Dip</asp:ListItem>
                        <asp:ListItem>Cheese Nachos</asp:ListItem>
                        <asp:ListItem>White Cold Dip</asp:ListItem>
                        <asp:ListItem>Beef and Beans Nachos</asp:ListItem>
                        <asp:ListItem>Bean Dip</asp:ListItem>
                        <asp:ListItem>Beef Nachos</asp:ListItem>
                        <asp:ListItem Selected="True">None</asp:ListItem>
                    </asp:DropDownList>



                </div>
                <div class="col-sm-4 text-center ordermargin">
                    <asp:TextBox ID="textboxQuantity2" runat="server" Width="54px"></asp:TextBox>
                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:Button ID="buttonAddToCart2" runat="server" Text="Add To Cart" />
                </div>
            </div>

            <div class="row background">
                <div class="col-sm-4 text-center ordermargin">
                    <asp:DropDownList ID="dropdownAppetizer3" runat="server">
                        <asp:ListItem>Cheese Dip</asp:ListItem>
                        <asp:ListItem>Cheese Nachos</asp:ListItem>
                        <asp:ListItem>White Cold Dip</asp:ListItem>
                        <asp:ListItem>Beef and Beans Nachos</asp:ListItem>
                        <asp:ListItem>Bean Dip</asp:ListItem>
                        <asp:ListItem>Beef Nachos</asp:ListItem>
                        <asp:ListItem Selected="True">None</asp:ListItem>
                    </asp:DropDownList>



                </div>
                <div class="col-sm-4 text-center ordermargin">
                    <asp:TextBox ID="textboxQuantity3" runat="server" Width="54px"></asp:TextBox>
                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:Button ID="buttonAddToCart3" runat="server" Text="Add To Cart" />
                </div>
            </div>


            <div class="row background catlabel text-center">
                <div class="col-sm-4 ordermargin">
                    <h5>A la Carte</h5>
                </div>
                <div class="col-sm-4 ordermargin">
                    <h5>Quantity</h5>
                </div>
                <div class="col-sm-4 ordermargin">
                    <h5>Add to Cart</h5>
                </div>
            </div>

            <div class="row background">
                <div class="col-sm-4 text-center ordermargin">
                    <asp:DropDownList ID="dropdownAlaCarte1" runat="server">
                        <asp:ListItem>Chicken Burrito</asp:ListItem>
                        <asp:ListItem>Beef Burrito</asp:ListItem>
                        <asp:ListItem>Bean Burrito</asp:ListItem>
                        <asp:ListItem>Chalupa</asp:ListItem>
                        <asp:ListItem>Beef Tostada</asp:ListItem>
                        <asp:ListItem>Chicken Enchiladas</asp:ListItem>
                        <asp:ListItem Selected="True">None</asp:ListItem>
                    </asp:DropDownList>

                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:TextBox ID="textboxQuantity4" runat="server" Width="54px"></asp:TextBox>
                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:Button ID="buttonAddToCart4" runat="server" Text="Add To Cart" />
                </div>
            </div>

            <div class="row background">
                <div class="col-sm-4 text-center ordermargin">
                    <asp:DropDownList ID="dropdownAlaCarte2" runat="server">
                        <asp:ListItem>Chicken Burrito</asp:ListItem>
                        <asp:ListItem>Beef Burrito</asp:ListItem>
                        <asp:ListItem>Bean Burrito</asp:ListItem>
                        <asp:ListItem>Chalupa</asp:ListItem>
                        <asp:ListItem>Beef Tostada</asp:ListItem>
                        <asp:ListItem>Chicken Enchiladas</asp:ListItem>
                        <asp:ListItem Selected="True">None</asp:ListItem>
                    </asp:DropDownList>

                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:TextBox ID="textboxQuantity5" runat="server" Width="54px"></asp:TextBox>
                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:Button ID="buttonAddToCart5" runat="server" Text="Add To Cart" />
                </div>
            </div>

            <div class="row background">
                <div class="col-sm-4 text-center ordermargin">
                    <asp:DropDownList ID="dropdownAlaCarte3" runat="server">
                        <asp:ListItem>Chicken Burrito</asp:ListItem>
                        <asp:ListItem>Beef Burrito</asp:ListItem>
                        <asp:ListItem>Bean Burrito</asp:ListItem>
                        <asp:ListItem>Chalupa</asp:ListItem>
                        <asp:ListItem>Beef Tostada</asp:ListItem>
                        <asp:ListItem>Chicken Enchiladas</asp:ListItem>
                        <asp:ListItem Selected="True">None</asp:ListItem>
                    </asp:DropDownList>

                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:TextBox ID="textboxQuantity6" runat="server" Width="54px"></asp:TextBox>
                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:Button ID="buttonAddToCart6" runat="server" Text="Add To Cart" />
                </div>
            </div>

            <div class="row background">
                <div class="col-sm-4 text-center ordermargin">
                    <asp:DropDownList ID="dropdownAlaCarte4" runat="server">
                        <asp:ListItem>Chicken Burrito</asp:ListItem>
                        <asp:ListItem>Beef Burrito</asp:ListItem>
                        <asp:ListItem>Bean Burrito</asp:ListItem>
                        <asp:ListItem>Chalupa</asp:ListItem>
                        <asp:ListItem>Beef Tostada</asp:ListItem>
                        <asp:ListItem>Chicken Enchiladas</asp:ListItem>
                        <asp:ListItem Selected="True">None</asp:ListItem>
                    </asp:DropDownList>

                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:TextBox ID="textboxQuantity7" runat="server" Width="54px"></asp:TextBox>
                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:Button ID="buttonAddToCart7" runat="server" Text="Add To Cart" />
                </div>
            </div>


            <div class="row background catlabel text-center">
                <div class="col-sm-4 ordermargin">
                    <h5>Steak & Beef</h5>
                </div>
                <div class="col-sm-4 ordermargin">
                    <h5>Quantity</h5>
                </div>
                <div class="col-sm-4 ordermargin">
                    <h5>Add to Cart</h5>
                </div>
            </div>


            <div class="row background">
                <div class="col-sm-4 text-center ordermargin">
                    <asp:DropDownList ID="dropdownSteakBeef1" runat="server">
                        <asp:ListItem>Texas Ribeye</asp:ListItem>
                        <asp:ListItem>Chile Colorado</asp:ListItem>
                        <asp:ListItem>Tampiquena Steak</asp:ListItem>
                        <asp:ListItem>Carne Asada</asp:ListItem>
                        <asp:ListItem>Steak Ranchero</asp:ListItem>
                        <asp:ListItem>Steak Mexicano</asp:ListItem>
                        <asp:ListItem Selected="True">None</asp:ListItem>
                    </asp:DropDownList>

                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:TextBox ID="textboxQuantity8" runat="server" Width="54px"></asp:TextBox>
                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:Button ID="buttonAddToCart8" runat="server" Text="Add To Cart" />
                </div>
            </div>

               <div class="row background">
                <div class="col-sm-4 text-center ordermargin">
                    <asp:DropDownList ID="dropdownSteakBeef2" runat="server">
                        <asp:ListItem>Texas Ribeye</asp:ListItem>
                        <asp:ListItem>Chile Colorado</asp:ListItem>
                        <asp:ListItem>Tampiquena Steak</asp:ListItem>
                        <asp:ListItem>Carne Asada</asp:ListItem>
                        <asp:ListItem>Steak Ranchero</asp:ListItem>
                        <asp:ListItem>Steak Mexicano</asp:ListItem>
                        <asp:ListItem Selected="True">None</asp:ListItem>
                    </asp:DropDownList>

                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:TextBox ID="textboxQuantity9" runat="server" Width="54px"></asp:TextBox>
                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:Button ID="buttonAddToCart9" runat="server" Text="Add To Cart" />
                </div>
            </div>

              <div class="row background">
                <div class="col-sm-4 text-center ordermargin">
                    <asp:DropDownList ID="dropdownSteakBeef3" runat="server">
                        <asp:ListItem>Texas Ribeye</asp:ListItem>
                        <asp:ListItem>Chile Colorado</asp:ListItem>
                        <asp:ListItem>Tampiquena Steak</asp:ListItem>
                        <asp:ListItem>Carne Asada</asp:ListItem>
                        <asp:ListItem>Steak Ranchero</asp:ListItem>
                        <asp:ListItem>Steak Mexicano</asp:ListItem>
                        <asp:ListItem Selected="True">None</asp:ListItem>
                    </asp:DropDownList>

                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:TextBox ID="textboxQuantity10" runat="server" Width="54px"></asp:TextBox>
                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:Button ID="buttonAddToCart10" runat="server" Text="Add To Cart" />
                </div>
            </div>

            <div class="row background">
                <div class="col-sm-4 text-center ordermargin">
                    <asp:DropDownList ID="dropdownSteakBeef4" runat="server">
                        <asp:ListItem>Texas Ribeye</asp:ListItem>
                        <asp:ListItem>Chile Colorado</asp:ListItem>
                        <asp:ListItem>Tampiquena Steak</asp:ListItem>
                        <asp:ListItem>Carne Asada</asp:ListItem>
                        <asp:ListItem>Steak Ranchero</asp:ListItem>
                        <asp:ListItem>Steak Mexicano</asp:ListItem>
                        <asp:ListItem Selected="True">None</asp:ListItem>
                    </asp:DropDownList>

                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:TextBox ID="textboxQuantity11" runat="server" Width="54px"></asp:TextBox>
                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:Button ID="buttonAddToCart11" runat="server" Text="Add To Cart" />
                </div>
            </div>

             <div class="row background catlabel text-center">
                <div class="col-sm-4 ordermargin">
                    <h5>Salads</h5>
                </div>
                <div class="col-sm-4 ordermargin">
                    <h5>Quantity</h5>
                </div>
                <div class="col-sm-4 ordermargin">
                    <h5>Add to Cart</h5>
                </div>
            </div>


            <div class="row background">
                <div class="col-sm-4 text-center ordermargin">
                    <asp:DropDownList ID="dropdownSalads1" runat="server">
                        <asp:ListItem>Tossed Salad</asp:ListItem>
                        <asp:ListItem>Guacamole Salad</asp:ListItem>
                        <asp:ListItem>Chicken Salad</asp:ListItem>
                        <asp:ListItem>Fajita Salad</asp:ListItem>
                        <asp:ListItem>Valarta Salad</asp:ListItem>
                        <asp:ListItem>Papas Locas</asp:ListItem>
                        <asp:ListItem Selected="True">None</asp:ListItem>
                    </asp:DropDownList>

                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:TextBox ID="textboxQuantity12" runat="server" Width="54px"></asp:TextBox>
                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:Button ID="buttonAddToCart12" runat="server" Text="Add To Cart" />
                </div>
            </div>

               <div class="row background">
                <div class="col-sm-4 text-center ordermargin">
                    <asp:DropDownList ID="dropdownSalads2" runat="server">
                     <asp:ListItem>Tossed Salad</asp:ListItem>
                        <asp:ListItem>Guacamole Salad</asp:ListItem>
                        <asp:ListItem>Chicken Salad</asp:ListItem>
                        <asp:ListItem>Fajita Salad</asp:ListItem>
                        <asp:ListItem>Valarta Salad</asp:ListItem>
                        <asp:ListItem>Papas Locas</asp:ListItem>
                        <asp:ListItem Selected="True">None</asp:ListItem>
                    </asp:DropDownList>

                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:TextBox ID="textboxQuantity13" runat="server" Width="54px"></asp:TextBox>
                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:Button ID="buttonAddToCart13" runat="server" Text="Add To Cart" />
                </div>
            </div>

              <div class="row background">
                <div class="col-sm-4 text-center ordermargin">
                    <asp:DropDownList ID="dropdownSalads3" runat="server">
                         <asp:ListItem>Tossed Salad</asp:ListItem>
                        <asp:ListItem>Guacamole Salad</asp:ListItem>
                        <asp:ListItem>Chicken Salad</asp:ListItem>
                        <asp:ListItem>Fajita Salad</asp:ListItem>
                        <asp:ListItem>Valarta Salad</asp:ListItem>
                        <asp:ListItem>Papas Locas</asp:ListItem>
                        <asp:ListItem Selected="True">None</asp:ListItem>
                    </asp:DropDownList>

                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:TextBox ID="textboxQuantity14" runat="server" Width="54px"></asp:TextBox>
                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:Button ID="buttonAddToCart14" runat="server" Text="Add To Cart" />
                </div>
            </div>

            <div class="row background">
                <div class="col-sm-4 text-center ordermargin">
                    <asp:DropDownList ID="dropdownSalads4" runat="server">
                        <asp:ListItem>Tossed Salad</asp:ListItem>
                        <asp:ListItem>Guacamole Salad</asp:ListItem>
                        <asp:ListItem>Chicken Salad</asp:ListItem>
                        <asp:ListItem>Fajita Salad</asp:ListItem>
                        <asp:ListItem>Valarta Salad</asp:ListItem>
                        <asp:ListItem>Papas Locas</asp:ListItem>
                        <asp:ListItem Selected="True">None</asp:ListItem>
                    </asp:DropDownList>

                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:TextBox ID="textboxQuantity15" runat="server" Width="54px"></asp:TextBox>
                </div>

                <div class="col-sm-4 text-center ordermargin">
                    <asp:Button ID="buttonAddToCart15" runat="server" Text="Add To Cart" />
                </div>
            </div>

            <div class="row background">
                <div class="col-sm-12">
                    
                </div>
            </div>

            <div class="row background text-center">
                <div class="col-sm-12 orderoptions">
                    <h2>Order Now For Both Catering or Pickup</h2>
                </div>
            </div>

            <div class="row background">
                <div class="col-sm-6">
                    <img src="Images/CateringPoseLP.jpg" alt="We Are Ready To Cater" class="img-fluid d-block mx-auto orderpics"/>
                </div>
                <div class="col-sm-6">
                    <img src="Images/PickupLP.jpg" alt="We Are Ready For Pickup" class="img-fluid d-block mx-auto orderpics" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
