<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Rook_Atlas.home" %>


<!DOCTYPE HTML>

<html>
<head>

    <title>HOME - BMSIT EPAY</title>

    <!-- Favicon -->
    <link rel="icon" type="image/png" href="favicon.png" />

    <!-- MetaData -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">

    <!-- WebFont -->
    <link href="https://fonts.googleapis.com/css?family=Niramit|Oxygen" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Codystar|Monoton" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Slabo+27px" rel="stylesheet">

    <!-- StyleSheets -->
    <link href="Index/Styles/Malleshwaram.css" rel="stylesheet" />
    <link href="Index/Styles/Hebbal.css" rel="stylesheet" />
    <link href="Index/Styles/Avalahalli.css" rel="stylesheet" />
    <link href="Index/Styles/Rajangunte.css" rel="stylesheet" />
    <link href="Index/Styles/Dodballapur.css" rel="stylesheet" />
    <link href="Index/Styles/Puttenhalli.css" rel="stylesheet" />
    <link href="Index/Styles/CRPF.css" rel="stylesheet" />
    <link href="Index/Styles/Yelahanka.css" rel="stylesheet" />

</head>

<!-- MainContent -->
<body>

    <div class="gtco-loader"></div>

    <div id="page">
        <nav class="gtco-nav" role="navigation">
            <div class="gtco-container">

                <div class="row">
                    <div class="col-sm-4 col-xs-12">
                        <div id="gtco-logo"><a class="logo-bmsit">BMSIT</a><a class="logo-pay">ePay</a></div>
                    </div>
                    <div class="col-xs-8 text-right menu-1" style="font-family: Roboto;">
                        <ul>
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="Login">Login</a></li>
                            <li><a href="Register">Register</a></li>
                            <li><a href="#footer">About</a></li>
                        </ul>
                    </div>
                </div>

            </div>
        </nav>

        <header id="gtco-header" class="gtco-cover" role="banner" style="height: 100vh;">
            <div class="overlay"></div>
            <div class="gtco-container" style="height: 100vh;">
                <div class="row">
                    <div class="col-md-12 col-md-offset-0 text-center">
                        <div class="display-t">
                            <div class="display-tc">
                                <h1 class="animate-box" data-animate-effect="fadeInUp" style="font-family: 'Niramit', sans-serif; font-size: 35px;">Welcome to BMSIT Payment Portal</h1>
                                <br />
                                <br />
                                <p class="animate-box" data-animate-effect="fadeInUp"><a href="Login" class="btn btn-white btn-lg btn-outline">Continue to Login</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>


        <div id="gtco-features">
            <div class="gtco-container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
                        <h2>Key Web Features</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="feature-center animate-box" data-animate-effect="fadeIn">
                            <span class="icon">
                                <i class="ti-credit-card"></i>
                            </span>
                            <h3>Payments</h3>
                            <p>Credit Card,Debit Card and Net banking of all major Indian bank's are supported. </p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="feature-center animate-box" data-animate-effect="fadeIn">
                            <span class="icon">
                                <i class="ti-lock"></i>
                            </span>
                            <h3>4096-Bit SSL</h3>
                            <p>All the connections to this site are end to end, encrypted. </p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="feature-center animate-box" data-animate-effect="fadeIn">
                            <span class="icon">
                                <i>
                                    <img src="Index/Resources/Icons/p64.png" />
                                </i>
                            </span>
                            <h3>P64-Hash</h3>
                            <p>This Website is Integrated with Exclusive P64 Hash Generator, to keep your credentails safe. </p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="feature-center animate-box" data-animate-effect="fadeIn">
                            <span class="icon">
                                <i class="ti-headphone-alt"></i>
                            </span>
                            <h3>24x7 Support</h3>
                            <p>We provide 24x7 help support for all your needs. </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer">
            <footer id="gtco-footer" role="contentinfo" style="background-color: rgb(40,40,40);">
                <div class="gtco-container">
                    <div class="row row-p	b-md">

                        <div class="col-md-4">
                            <div class="gtco-widget">
                                <h3 style="color: #fff;">About Us</h3>
                                <p>EPAY Payment Portal, is a product of Rook Labs.</br>BMSIT & M Campus, Avalahalli </p>
                            </div>
                        </div>

                        <div class="col-md-4 col-md-push-1">
                            <div class="gtco-widget">
                                <h3 style="color: #fff;">Links</h3>
                                <ul class="gtco-footer-links">
                                    <li><a href="#">Developer </a></li>
                                    <li><a href="#">Terms of services</a></li>
                                    <li><a href="#">Privacy Policy</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="gtco-widget">
                                <h3 style="color: #fff;">Get In Touch</h3>
                                <ul class="gtco-quick-contact">
                                    <li><a><i class="icon-phone"></i>+91 96113 35641</a></li>
                                    <li><a><i class="icon-mail2"></i>bmsit@rooklabs.net</a></li>
                                </ul>
                            </div>
                        </div>

                    </div>

                    <div class="row copyright">
                        <div class="col-md-12">
                            <p class="pull-left">
                                <small class="block">&copy; 2018 BMSIT & M. All Rights Reserved.</small>
                                <small class="block">Powered by <a href="https://www.rooklabs.net" target="_blank">Rook Labs</a>, Bengaluru</small>

                            </p>
                            <p class="pull-right">
                                <ul class="gtco-social-icons pull-right">
                                    <li><a href="#"><i class="icon-twitter"></i></a></li>
                                    <li><a href="#"><i class="icon-facebook"></i></a></li>
                                    <li><a href="#"><i class="icon-linkedin"></i></a></li>
                                </ul>
                            </p>
                        </div>
                    </div>

                </div>
            </footer>
        </div>
    </div>

    <div class="gototop js-top">
        <a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
    </div>

    <!-- Scripts  -->
    <script src="Index/Scripts/BelCircle.js"></script>
    <script src="Index/Scripts/HampiRatha.js"></script>
    <script src="Index/Scripts/WonderLa.js"></script>
    <script src="Index/Scripts/CubbonPark.js"></script>
    <script src="Index/Scripts/VidhanSouda.js"></script>
    <script src="Index/Scripts/MysoreBank"></script>
    <script src="Index/Scripts/AvenueRoad.js"></script>
    <script src="Index/Scripts/KRMarket.js"></script>
    <script src="Index/Scripts/RajBhawan.js"></script>
    <script src="Index/Scripts/BannerGhatta.js"></script>

</body>
</html>
