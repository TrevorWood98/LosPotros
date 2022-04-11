<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnlineShopping.aspx.cs" Inherits="LosPotrosWebsite.OnlineShopping" %>

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
                <div class="col-sm-3">
                    <div class="card">
                        <img src="Images/SteetTacosCaterLP.jpg" class=" d-block mx-auto  card-img-top" alt="Street Tacos" />
                        <div class="card-body">
                            <h5 class="card-title">Street Tacos</h5>
                            <p class="card-text">
                                Our Street Tacos contains savory fajita meat with grilled onions and peppers.
                            </p>
                            <%-- We are hardcoding value of 101 and will replace later. --%>
                            <asp:HiddenField ID="hidProductID1" runat="server" value ="1"/>
                            <label>Plate(s): </label>
                            <asp:TextBox ID="tboxQuantity1" runat="server" TextMode="Number" ValidationGroup="ProductOne"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvQuantity1" runat="server" ErrorMessage="Please Enter Quantity" ControlToValidate="tboxQuantity1" Display="Dynamic" ForeColor="Red" ValidationGroup="ProductOne"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="rgvalQuantity1" runat="server" ErrorMessage="Please enter a quantity between 1 and 10." ControlToValidate="tboxQuantity1" Display="Dynamic" ForeColor="Red" MaximumValue="10" MinimumValue="1" Type="Integer" ValidationGroup="ProductOne"></asp:RangeValidator>
                            <asp:Button ID="btnAddToCart1" runat="server" Text="Add to Plate" class="btn btn-dark mt-3" ValidationGroup="ProductOne" OnClick="btnAddToCart1_Click" />
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card">
                        <img src="Images/HuevosRancherosCateringLP.jpg" class=" d-block mx-auto  card-img-top" alt="Street Tacos" />
                        <div class="card-body">
                            <h5 class="card-title">Huevos Rancheros</h5>
                            <p class="card-text">
                                Three eggs topped with ranchera sauce, served with rice, beans and tortillas.
                            </p>
                            <%-- We are hardcoding value of 101 and will replace later. --%>
                            <asp:HiddenField ID="hidProductID2" runat="server" value ="2"/>
                            <label>Plate(s): </label>
                            <asp:TextBox ID="tboxQuantity2" runat="server" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvQuantity2" runat="server" ErrorMessage="Please Enter Quantity" ControlToValidate="tboxQuantity2" Display="Dynamic" ForeColor="Red" ValidationGroup="ProductTwo"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="rngvalQuantity2" runat="server" ErrorMessage="Please enter a quantity between 1 and 10." ControlToValidate="tboxQuantity2" Display="Dynamic" ForeColor="Red" MaximumValue="10" MinimumValue="1" Type="Integer" ValidationGroup="ProductTwo"></asp:RangeValidator>
                            <asp:Button ID="btnAddToCart2" runat="server" Text="Add to Plate" class="btn btn-dark mt-3" OnClick="btnAddToCart2_Click" ValidationGroup="ProductTwo" />
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card">
                        <img src="Images/enchiladasCateringLP.jpg" class=" d-block mx-auto card-img-top" alt="Street Tacos" />
                        <div class="card-body">
                            <h5 class="card-title">Enchiladas</h5>
                            <p class="card-text">
                               Four rolled corn tortillas, all topped with enchilada sauce, cheese, lettuce, tomatoes and sour cream.
                            </p>
                            <%-- We are hardcoding value of 101 and will replace later. --%>
                            <asp:HiddenField ID="hidProductID3" runat="server" value ="3"/>
                            <label>Plate(s): </label>
                            <asp:TextBox ID="tboxQuantity3" runat="server" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvQuantity3" runat="server" ErrorMessage="Please Enter Quantity" ControlToValidate="tboxQuantity3" Display="Dynamic" ForeColor="Red" ValidationGroup="ProductThree"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="rngvalQuantity3" runat="server" ErrorMessage="Please enter a quantity between 1 and 10." ControlToValidate="tboxQuantity3" Display="Dynamic" ForeColor="Red" MaximumValue="10" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                            <asp:Button ID="btnQuantity3" runat="server" Text="Add to Plate" class="btn btn-dark mt-3" OnClick="btnQuantity3_Click" ValidationGroup="ProductThree" />
                        </div>
                    </div> 
                </div>
                <div class="col-sm-3">
                    <div class="card">
                        <img src="Images/FajitasCateringLP.jpg" class="d-block mx-auto card-img-top" alt="Street Tacos" />
                        <div class="card-body">
                            <h5 class="card-title">Fajitas</h5>
                            <p class="card-text">
                                Grilled chicken, cooked with bell peppers, onions and tomatoes, served with rice, beans, guacamole, sour cream and pico

de gallo
                            </p>
                            <%-- We are hardcoding value of 101 and will replace later. --%>
                            <asp:HiddenField ID="hidProductID5" runat="server" value ="5"/>
                            <label>Plate(s): </label>
                            <asp:TextBox ID="tboxQuantity4" runat="server" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvQuantity4" runat="server" ErrorMessage="Please Enter Quantity" ControlToValidate="tboxQuantity4" Display="Dynamic" ForeColor="Red" ValidationGroup="ProductFour"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="rngvalQuantity4" runat="server" ErrorMessage="Please enter a quantity between 1 and 10." ControlToValidate="tboxQuantity4" Display="Dynamic" ForeColor="Red" MaximumValue="10" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                            <asp:Button ID="btnQuantity4" runat="server" Text="Add to Plate" class="btn btn-dark mt-3" OnClick="btnQuantity4_Click" ValidationGroup="ProductFour" />
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
