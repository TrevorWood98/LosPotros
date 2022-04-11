<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="LosPotrosWebsite.CreateAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
          <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/LosPotrosCSS.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Chango&display=swap" rel="stylesheet" />
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Los Potros Mexican Restaurant - Login Page</title>
</head>
<body class="loginbackground loginbottom">
    <form id="form1" runat="server">
        <div class="container">
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
                        <a class="nav-link" href="https://www.facebook.com/Los-Potros-Mexican-Restaurant-124877644356054/?ref=page_internal"
                            target="blank" title="Facebook">
                            <img src="Images/FacebookIcon.png" class="facebooklogo" />
                        </a>
                    </li>
                </ul>

            </nav>

            <div class="row  text-center createaccheading">
                <div class="col-sm-12 background">
                <h2>Create An Account</h2>
                    <p class="aboutustext">Fill out required fields below to create account</p>
                    </div>
            </div>

            <div class="row">
                <div class="col-sm-6 background text-right">
                    <asp:Label ID="labelEmail" runat="server" Text="E-Mail Address" ForeColor="White"></asp:Label>
                </div>
                <div class="col-sm-6 background text-left">
                    <asp:TextBox ID="textboxEmail" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                </div>
            </div>

             <div class="row ">
                <div class="col-sm-6 background text-right">
                    <asp:Label ID="labelFirstName" runat="server" Text="First Name" ForeColor="White"></asp:Label>
                </div>
                <div class="col-sm-6 background text-left">
                    <asp:TextBox ID="textboxFirstName" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                </div>
                 
            </div>

            <div class="row ">
                <div class="col-sm-6 background text-right">
                    <asp:Label ID="labelLastName" runat="server" Text="Last Name" ForeColor="White"></asp:Label>
                </div>
                <div class="col-sm-6 background text-left">
                    <asp:TextBox ID="textboxLastName" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                </div>
                 
            </div>


            <div class="row ">
                <div class="col-sm-6 background text-right">
                    <asp:Label ID="labelNewUsername" runat="server" Text="New Username" ForeColor="White"></asp:Label>
                </div>
                <div class="col-sm-6 background text-left">
                    <asp:TextBox ID="texboxNewUsername" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                </div>
                 
            </div>

               <div class="row ">
                <div class="col-sm-6 background text-right">
                    <asp:Label ID="labelNewPassword" runat="server" Text="New Password" ForeColor="White"></asp:Label>
                </div>
                <div class="col-sm-6 background text-left">
                    <asp:TextBox ID="textboxNewPassword" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                </div>
                 
            </div>

             <div class="row ">
                <div class="col-sm-6 background text-right">
                    <asp:Label ID="labelReNewPassword" runat="server" Text="Re-enter Password" ForeColor="White"></asp:Label>
                </div>
                <div class="col-sm-6 background text-left">
                    <asp:TextBox ID="textboxReNewPassword" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                </div>
                 
            </div>

            
             <div class="row ">
                 <div class="col-sm-6 background text-right">
                 <asp:Button ID="buttonCreateCancel" runat="server" Text="Cancel" BorderColor="Black" BorderStyle="Solid" />
                </div>
                <div class="col-sm-6 background text-left">
                    <asp:Button ID="buttonSubmit" runat="server" Text="Submit" BorderColor="Black" BorderStyle="Solid" />
                </div>
                 
            </div>

             <div class="row">
            <div class="loginlogo col-sm-12 justify-content-center background">
                <img src="Images/LostPotrosLogo.png" alt="Los Potros Logo" />
            </div>
       </div>

       </div>
    </form>
</body>
</html>
