<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login Page.aspx.cs" Inherits="LosPotrosWebsite.Login_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/Assignment4CSS.css" rel="stylesheet" />
    <link href="Content/LosPotrosCSS.css" rel="stylesheet" />
    <meta name="viewport" content="width = device-width,initial-scale=1.0" />
    <title>Login Page</title>
</head>
<body class="background">
    <form id="form1" runat="server">






        <div class="container">



            <asp:MultiView ID="mviewLoginProcess" runat="server" ActiveViewIndex="0">

                <asp:View ID="vLogin" runat="server">


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

                    <div class="row">
                        <div class="loginlogo col-sm-12 justify-content-center background">
                            <img src="Images/LostPotrosLogo.png" alt="Los Potros Logo" />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-4 background">
                        </div>
                        <div class="col-sm-4 background text-center">
                            <asp:Label ID="labelCreateSuccess" runat="server" Text="" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-4 background">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-6  background rightalignlabel">
                            <asp:Label ID="labelUsername" runat="server" Text="Username" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-3 text-left background">
                            <asp:TextBox ID="textboxUsername" runat="server" BorderColor="Black" BorderStyle="Solid" Width="170px"></asp:TextBox>
                        </div>
                        <div class="col-sm-3 background">
                            <%-- Required field validator --%>
                            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Please enter your username." ForeColor="Red" ControlToValidate="textboxUsername" Display="Dynamic"></asp:RequiredFieldValidator>

                        </div>
                    </div>

                    <div class="row background">
                        <div class="col-sm-6 rightalignlabel ">
                            <asp:Label ID="labelPassword" runat="server" Text="Password" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-3 text-left ">
                            <asp:TextBox ID="textboxPassword" runat="server" BorderColor="Black" BorderStyle="Solid" Width="170px" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="col-sm-3 text-left">
                            <%-- Required Field Validator --%>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Please enter your password." ControlToValidate="textboxPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-4 background">
                        </div>
                        <div class="col-sm-4 text-center background">
                            <asp:Button ID="buttonLogin" runat="server" Text="Login" OnClick="buttonLogin_Click" />

                        </div>
                        <div class="col-sm-4 text-center background">
                            <asp:Label ID="labelInvalidMessage" runat="server" ForeColor="Red"></asp:Label>
                        </div>
                    </div>

                    <div class="row">

                        <div class="col-sm-6 offset-sm-6 background">
                            <%-- Link Button --%>
                            <asp:LinkButton ID="linkbuttonCreateAcc" runat="server" CausesValidation="False" OnClick="linkbuttonCreateAcc_Click">Create Account</asp:LinkButton>
                        </div>
                    </div>

                    <div class="row background">
                        <div class="col-sm-12">
                            <div id="LoginC" class="carousel slide " data-ride="carousel" data-interval="4000">
                                <%-- Indicators --%>
                                <ol class="carousel-indicators">
                                    <li data-target="#LoginC" data-slide-to="0" class="active"></li>
                                    <li data-target="#LoginC" data-slide-to="1"></li>
                                    <li data-target="#LoginC" data-slide-to="2"></li>

                                </ol>

                                <%-- Wrapper for slides --%>
                                <div class="carousel-inner">
                                    <%-- Image 1 --%>
                                    <div class="carousel-item active">

                                        <img src="Images/CreamFace1.jpg" alt="Happy Birthday Tradition" class=" carousel-image-size img-fluid d-block mx-auto carousel-img-size" />

                                    </div>

                                    <%-- Image 2 --%>
                                    <div class="carousel-item">

                                        <img src="Images/CreamFace2.jpg" alt="Happy Birthday Tradition" class="carousel-image-size img-fluid d-block mx-auto carousel-img-size" />


                                    </div>
                                    <%-- Image 3 --%>
                                    <div class="carousel-item">
                                        <img src="Images/CreamFace3.jpg" alt="Happy Birthday Tradition" class="carousel-image-size img-fluid d-block mx-auto carousel-img-size" />
                                    </div>
                                    <%-- Image 4 --%>
                                    <div class="carousel-item">
                                        <img src="Images/CreamFace4.jpg" alt="Happy Birthday Tradition" class="carousel-image-size img-fluid d-block mx-auto carousel-img-size" />
                                    </div>
                                </div>
                                <%-- Image 5 --%>
                                <div class="carousel-item">
                                    <img src="Images/CreamFace5.jpg" alt="Happy Birthday Tradition" class="carousel-image-size img-fluid d-block mx-auto carousel-img-size" />
                                </div>
                                <%-- Image 6 --%>
                                <div class="carousel-item">
                                    <img src="Images/CreamFace6.jpg" alt="Happy Birthday Tradition" class="carousel-image-size img-fluid d-block mx-auto carousel-img-size" />
                                </div>

                            </div>
                        </div>
                        <%-- Previous and Next Buttons --%>
                        <%-- Previous --%>
                        <a class="carousel-control-prev" href="#LoginC" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <%-- Next --%>
                        <a class="carousel-control-next" href="#LoginC" role="button" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                            <span class="sr-only">Next</span>
                        </a>

                    </div>
                </asp:View>



                <%-- 2nd view inside page for Account Creation --%>
                <asp:View ID="vAccountCreate" runat="server">


                    <div class="row  text-center createaccheading">
                        <div class="col-sm-12">
                            <h2>Create An Account</h2>
                            <p class="aboutustext">Fill out required fields below to create account</p>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-sm-6 background rightalignlabel">
                            <asp:Label ID="labelFirstName" runat="server" Text="First Name" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-3 background text-left">
                            <asp:TextBox ID="textboxFirstName" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                        </div>
                        <div class="col-sm-3 background">
                            <%-- Required Field Validator --%>
                            <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ErrorMessage="Please Enter First Name" ForeColor="Red" ControlToValidate="textboxFirstName"></asp:RequiredFieldValidator>
                        </div>

                    </div>

                    <div class="row ">
                        <div class="col-sm-6 background rightalignlabel">
                            <asp:Label ID="labelLastName" runat="server" Text="Last Name" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-3 background text-left">
                            <asp:TextBox ID="textboxLastName" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                        </div>
                        <div class="col-sm-3 background">
                            <%-- Required Field Validator --%>
                            <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ErrorMessage="Please Enter Last Name." ForeColor="Red" ControlToValidate="textboxLastName"></asp:RequiredFieldValidator>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-sm-6 background rightalignlabel">
                            <asp:Label ID="labelEmail" runat="server" Text="E-Mail Address" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-3 background text-left">
                            <asp:TextBox ID="textboxEmail" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                        </div>
                        <div class="col-sm-3 background">
                            <%-- Required Field Validator --%>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Please Enter E-Mail Address" ForeColor="Red" Display="Dynamic" ControlToValidate="textboxEmail"></asp:RequiredFieldValidator>
                            <%-- Regular Expression Validator --%>
                            <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Enter Valid E-Mail Address." Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="textboxEmail" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                    </div>


                    <div class="row background">
                        <div class="col-sm-6 background rightalignlabel">
                            <asp:Label ID="labelNewPassword" runat="server" Text="New Password" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-3 background text-left">
                            <asp:TextBox ID="textboxNewPassword" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                        </div>
                        <div class="col-sm-3 background">
                            <%-- Required Field Validator --%>
                            <asp:RequiredFieldValidator ID="rfvNewPassword" runat="server" ErrorMessage="Enter A Password" ForeColor="Red" Display="Dynamic" ControlToValidate="textboxNewPassword"></asp:RequiredFieldValidator>
                            <%-- Range Validator --%>
                            <asp:RegularExpressionValidator ID="revNewPassword" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="textboxNewPassword" Display="Dynamic" ForeColor="Red" ValidationExpression="^\s*(?:\S\s*){8,25}$">Character Length 8-25</asp:RegularExpressionValidator>
                        </div>

                    </div>

                    <div class="row ">
                        <div class="col-sm-6 background rightalignlabel">
                            <asp:Label ID="labelPhoneNumber" runat="server" Text="Phone Number" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-3 background text-left">
                            <asp:TextBox ID="textboxPhoneNumber" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                        </div>
                        <div class="col-sm-3 background">
                            <%-- Required Field Validator --%>
                            <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" ErrorMessage="Please Enter Phone Number." ForeColor="Red" ControlToValidate="textboxPhoneNumber" Display="Dynamic"></asp:RequiredFieldValidator>
                            <%-- Regular Expression Validator --%>
                            
                        </div>

                    </div>

                    <div class="row ">
                        <div class="col-sm-6 background rightalignlabel">
                            <asp:Label ID="labelAddress1" runat="server" Text="Address 1" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-3 background text-left">
                            <asp:TextBox ID="textboxAddress1" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                        </div>
                        <div class="col-sm-3 background">
                            <%-- Required Field Validator --%>
                            <asp:RequiredFieldValidator ID="rfvAddress1" runat="server" ErrorMessage="Please Enter Address." ForeColor="Red" ControlToValidate="textboxAddress1" Display="Dynamic"></asp:RequiredFieldValidator>

                        </div>

                    </div>

                    <div class="row ">
                        <div class="col-sm-5 background rightalignlabel">
                            <asp:Label ID="labelAddress2" runat="server" Text="Address 2 (Optional)" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-2 background text-left">
                            <asp:TextBox ID="textboxAddress2" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                        </div>
                        <div class="col-sm-1 background rightalignlabel">
                            <asp:Label ID="labelAptNumber" runat="server" Text="Apt #" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-1 background text-left">
                            <asp:TextBox ID="texboxAptNumber" runat="server" BorderColor="Black" BorderStyle="Solid" Width="55px"></asp:TextBox>

                        </div>
                        <div class="col-sm-3 background">
                        </div>

                    </div>

                    <div class="row ">
                        <div class="col-sm-6 background rightalignlabel">
                            <asp:Label ID="labelCity" runat="server" Text="City" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-3 background text-left">
                            <asp:TextBox ID="textboxCity" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                        </div>
                        <div class="col-sm-3 background">
                            <%-- Required Field Validator --%>
                            <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="Please Enter City" ForeColor="Red" ControlToValidate="textboxCity" Display="Dynamic"></asp:RequiredFieldValidator>

                        </div>
                    </div>

                    <div class="row ">
                        <div class="col-sm-6 background rightalignlabel">
                            <asp:Label ID="labelState" runat="server" Text="State" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-3 background text-left">
                            <asp:DropDownList ID="ddlState" runat="server" DataSourceID="sdsStates" DataTextField="StateAbbr" DataValueField="StateID" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                            </asp:DropDownList>

                            <asp:SqlDataSource ID="sdsStates" runat="server" ConnectionString="<%$ ConnectionStrings:F20_kstrevwooConnectionString %>" SelectCommand="spSelectAllStates" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

                        </div>
                        <div class="col-sm-3 background">
                            <%-- Required Field Validator --%>
                            <asp:RequiredFieldValidator ID="rfvState" runat="server" ErrorMessage="Please Enter State." ForeColor="Red" ControlToValidate="ddlState" Display="Dynamic" InitialValue="6"></asp:RequiredFieldValidator>

                        </div>

                    </div>

                    <div class="row ">
                        <div class="col-sm-6 background rightalignlabel">
                            <asp:Label ID="labelZip" runat="server" Text="Zip" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-3 background text-left">
                            <asp:TextBox ID="textboxZip" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                        </div>
                        <div class="col-sm-3 background">
                            <%-- Required Field Validator --%>
                            <asp:RequiredFieldValidator ID="rfvZip" runat="server" ErrorMessage="Please Enter Zip Code." ForeColor="Red" ControlToValidate="textboxZip" Display="Dynamic"></asp:RequiredFieldValidator>
                            <%-- Regular Expression Validator --%>
                            <asp:RegularExpressionValidator ID="revZip" runat="server" ErrorMessage="Enter Valid Zip Code" ControlToValidate="textboxZip" Display="Dynamic" ForeColor="Red" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>

                        </div>

                    </div>

                    <div class="row">
                        <div class="col-sm-6 background rightalignlabel">
                            <asp:Label ID="labelRecovery" runat="server" Text="Recovery E-Mail" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-3 background text-left">
                            <asp:TextBox ID="textboxRecovery" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                        </div>
                        <div class="col-sm-3 background">
                            <%-- Required Field Validator --%>
                            <asp:RequiredFieldValidator ID="rfvRecovery" runat="server" ErrorMessage="Please Enter E-Mail Address" ForeColor="Red" Display="Dynamic" ControlToValidate="textboxRecovery"></asp:RequiredFieldValidator>
                            <%-- Regular Expression Validator --%>
                            <asp:RegularExpressionValidator ID="revRecovery" runat="server" ErrorMessage="Enter Valid E-Mail Address." Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="textboxRecovery" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                    </div>

                    <div class="row ">
                        <div class="col-sm-4 background">
                        </div>

                        <div class="col-sm-4 background text-center">
                            <%-- Submit Button for Account Creation --%>
                            <asp:Button ID="buttonSubmit" runat="server" Text="Submit" OnClick="buttonSubmit_Click" />
                        </div>
                        <div class="col-sm-4 background">
                        </div>

                    </div>




                    <div class="row">
                        <div class="loginlogo col-sm-12 justify-content-center background">
                            <img src="Images/LostPotrosLogo.png" alt="Los Potros Logo" />
                        </div>
                    </div>
                </asp:View>







                <asp:View ID="vModifyAccount" runat="server">
                    <%-- 3rd view page - Modify Account --%>


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

                    <div class="row  text-center createaccheading">
                        <div class="col-sm-12">
                            <h2>Modify Account</h2>
                            <p class="aboutustext">Fill out required fields below to modify account</p>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-4 text-center">
                            <asp:Label ID="labelLoginSuccess" runat="server" Text="" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-4">
                        </div>
                    </div>

                     <div class="row ">
                        <div class="col-sm-6 background rightalignlabel">
                            <asp:Label ID="labelMUserID" runat="server" Text="UserID" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-3 background text-left">
                            <asp:TextBox ID="textboxMUserID" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                        </div>
                        <div class="col-sm-3 background">
                            <%-- Required Field Validator --%>
                            <asp:RequiredFieldValidator ID="rfvMUserID" runat="server" ErrorMessage="Please Enter UserID" ForeColor="Red" ControlToValidate="textboxMFirstName"></asp:RequiredFieldValidator>
                        </div>

                    </div>

                          <div class="row ">
                        <div class="col-sm-6 background rightalignlabel">
                            <asp:Label ID="labelMUsername" runat="server" Text="Username" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-3 background text-left">
                            <asp:TextBox ID="textboxMUsername" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                        </div>
                        <div class="col-sm-3 background">
                            <%-- Required Field Validator --%>
                            <asp:RequiredFieldValidator ID="rfvMUsername" runat="server" ErrorMessage="Please Enter Username" ForeColor="Red" ControlToValidate="textboxMFirstName"></asp:RequiredFieldValidator>
                        </div>

                    </div>


                    <div class="row ">
                        <div class="col-sm-6 background rightalignlabel">
                            <asp:Label ID="labelMFirstName" runat="server" Text="First Name" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-3 background text-left">
                            <asp:TextBox ID="textboxMFirstName" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                        </div>
                        <div class="col-sm-3 background">
                            <%-- Required Field Validator --%>
                            <asp:RequiredFieldValidator ID="rfvMFirstName" runat="server" ErrorMessage="Please Enter First Name" ForeColor="Red" ControlToValidate="textboxMFirstName"></asp:RequiredFieldValidator>
                        </div>

                    </div>

                    <div class="row ">
                        <div class="col-sm-6 background rightalignlabel">
                            <asp:Label ID="labelMLastName" runat="server" Text="Last Name" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-3 background text-left">
                            <asp:TextBox ID="textboxMLastName" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                        </div>
                        <div class="col-sm-3 background">
                            <%-- Required Field Validator --%>
                            <asp:RequiredFieldValidator ID="rfvMLastName" runat="server" ErrorMessage="Please Enter Last Name." ForeColor="Red" ControlToValidate="textboxMLastName"></asp:RequiredFieldValidator>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-sm-6 background rightalignlabel">
                            <asp:Label ID="labelMEmail" runat="server" Text="E-Mail Address" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-3 background text-left">
                            <asp:TextBox ID="textboxMEmail" runat="server" BorderColor="Black" BorderStyle="Solid" ReadOnly="True" OnTextChanged="textboxMEmail_TextChanged"></asp:TextBox>
                        </div>
                        <div class="col-sm-3 background">
                        </div>
                    </div>


                    <div class="row background">
                        <div class="col-sm-6 background rightalignlabel">
                            <asp:Label ID="labelMPassword" runat="server" Text="New Password" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-3 background text-left">
                            <asp:TextBox ID="textboxMPassword" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                        </div>
                        <div class="col-sm-3 background">
                            <%-- Required Field Validator --%>
                            <asp:RequiredFieldValidator ID="rfvMPassword" runat="server" ErrorMessage="Enter A Password" ForeColor="Red" Display="Dynamic" ControlToValidate="textboxMPassword"></asp:RequiredFieldValidator>
                            <%-- Regular Expression Validator --%>
                            <asp:RegularExpressionValidator ID="revMPassword" runat="server" ErrorMessage="Character Length 8-25" Display="Dynamic" ForeColor="Red" ControlToValidate="textboxMPassword" ValidationExpression="^\s*(?:\S\s*){8,25}$"></asp:RegularExpressionValidator>
                        </div>

                    </div>

                    <div class="row ">
                        <div class="col-sm-6 background rightalignlabel">
                            <asp:Label ID="labelMPhone" runat="server" Text="Phone Number" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-3 background text-left">
                            <asp:TextBox ID="textboxMPhone" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                        </div>
                        <div class="col-sm-3 background">
                            <%-- Required Field Validator --%>
                            <asp:RequiredFieldValidator ID="rfvMPhone" runat="server" ErrorMessage="Please Enter Phone Number." ForeColor="Red" ControlToValidate="textboxMPhone" Display="Dynamic"></asp:RequiredFieldValidator>
                            <%-- Regular Expression Validator --%>
                           
                        </div>

                    </div>

                    <div class="row ">
                        <div class="col-sm-6 background rightalignlabel">
                            <asp:Label ID="labelMAddress1" runat="server" Text="Address 1" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-3 background text-left">
                            <asp:TextBox ID="textboxMAddress1" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                        </div>
                        <div class="col-sm-3 background">
                            <%-- Required Field Validator --%>
                            <asp:RequiredFieldValidator ID="rfvMAddress1" runat="server" ErrorMessage="Please Enter Address." ForeColor="Red" ControlToValidate="textboxMAddress1" Display="Dynamic"></asp:RequiredFieldValidator>

                        </div>

                    </div>

                    <div class="row ">
                        <div class="col-sm-5 background rightalignlabel">
                            <asp:Label ID="labelMAddress2" runat="server" Text="Address 2 (Optional)" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-2 background text-left">
                            <asp:TextBox ID="textboxMAddress2" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                        </div>
                        <div class="col-sm-1 background rightalignlabel">
                            <asp:Label ID="labelMApt" runat="server" Text="Apt #" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-1 background text-left">
                            <asp:TextBox ID="textboxMApt" runat="server" BorderColor="Black" BorderStyle="Solid" Width="55px"></asp:TextBox>

                        </div>
                        <div class="col-sm-3 background">
                        </div>

                    </div>

                    <div class="row ">
                        <div class="col-sm-6 background rightalignlabel">
                            <asp:Label ID="labelMCity" runat="server" Text="City" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-3 background text-left">
                            <asp:TextBox ID="textboxMCity" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                        </div>

                        <div class="col-sm-3 background">
                            <%-- Required Field Validator --%>
                            <asp:RequiredFieldValidator ID="rfvCity1" runat="server" ErrorMessage="Please Enter City." ForeColor="Red" ControlToValidate="textboxMCity" Display="Dynamic"></asp:RequiredFieldValidator>

                        </div>

                    </div>

                    <div class="row ">
                        <div class="col-sm-6 background rightalignlabel">
                            <asp:Label ID="labelStateModify" runat="server" Text="State" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-3 background text-left">
                            <asp:DropDownList ID="ddlStateModify" runat="server" DataSourceID="sdsStates" OnSelectedIndexChanged="ddlStateModify_SelectedIndexChanged" DataTextField="StateAbbr" DataValueField="StateID">
                           
                            </asp:DropDownList>
                        </div>

                        <div class="col-sm-3 background">
                            <%-- Required Field Validator --%>
                            <asp:RequiredFieldValidator ID="rfvStateModify" runat="server" ErrorMessage="Please Enter State." ForeColor="Red" ControlToValidate="ddlStateModify" Display="Dynamic" InitialValue="6"></asp:RequiredFieldValidator>

                        </div>

                    </div>

                    <div class="row ">
                        <div class="col-sm-6 background rightalignlabel">
                            <asp:Label ID="labelMZip" runat="server" Text="Zip" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-3 background text-left">
                            <asp:TextBox ID="textboxMZip" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                        </div>
                        <div class="col-sm-3 background">
                            <%-- Required Field Validator --%>
                            <asp:RequiredFieldValidator ID="rfvMZip" runat="server" ErrorMessage="Please Enter Zip Code." ForeColor="Red" ControlToValidate="textboxMZip" Display="Dynamic"></asp:RequiredFieldValidator>
                            <%-- Regular Expression Validator --%>
                            <asp:RegularExpressionValidator ID="revMZip" runat="server" ErrorMessage="Enter Valid Zip Code" ControlToValidate="textboxMZip" Display="Dynamic" ForeColor="Red" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>

                        </div>

                    </div>

                    <div class="row">
                        <div class="col-sm-6 background rightalignlabel">
                            <asp:Label ID="labelMRecovery" runat="server" Text="Recovery E-Mail" ForeColor="White"></asp:Label>
                        </div>
                        <div class="col-sm-3 background text-left">
                            <asp:TextBox ID="textboxMRecovery" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                        </div>
                        <div class="col-sm-3 background">
                            <%-- Required Field Validator --%>
                            <asp:RequiredFieldValidator ID="rfvMRecovery" runat="server" ErrorMessage="Please Enter E-Mail Address" ForeColor="Red" Display="Dynamic" ControlToValidate="textboxMRecovery"></asp:RequiredFieldValidator>
                            <%-- Regular Expression Validator --%>
                            <asp:RegularExpressionValidator ID="revMRecovery" runat="server" ErrorMessage="Enter Valid E-Mail Address." Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="textboxMRecovery" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                    </div>

                    <div class="row ">
                        <div class="col-sm-4 background text-right">
                        </div>
                        <%-- Update Profile Button --%>
                        <div class="col-sm-4 background text-center">
                            <asp:Button ID="buttonUpdate" runat="server" Text="Update" OnClick="buttonUpdate_Click" />
                        </div>
                        <div class="col-sm-4 background text-right">
                        </div>
                    </div>


                    <div class="row">
                        <div class="loginlogo col-sm-12 justify-content-center background">
                            <img src="Images/LostPotrosLogo.png" alt="Los Potros Logo" />
                        </div>
                    </div>


                </asp:View>

            </asp:MultiView>
        </div>

    </form>
</body>
</html>
