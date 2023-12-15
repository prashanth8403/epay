<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Userconfirm.aspx.cs" Inherits="Rook_Atlas.web.registration.Userconfirm" %>

<!DOCTYPE html>
<html>
<head>
    <title>REGISTRATION - BMSIT EPAY</title>
    <!-- MetaData -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- StyleSheet -->
    <link rel="icon" type="image/png" href="../../favicon.png" />
    <link href="../../Index/Styles/Kalaburgi.css" rel="stylesheet" />
    <link href="../../Index/Styles/Mysuru.css" rel="stylesheet" />
    <link href="../../Index/Styles/Bidar.css" rel="stylesheet" />
</head>

    <!-- MainContent -->
<body>
    <section class="banner" role="banner">
        <div id="banner" class="container">
            <div class="col-md-7 col-sm-12">
                <div class="banner-text">
                    <h1>You're All Set</h1><br />
                    <p>Your Login ID has be sent to <asp:Label ID="Email" runat="server" style="font-weight:600;" Text=""></asp:Label>, use your credentails to Login. <br />*Keep your User ID and Password confidential* </p>
                    
                    <div class="banner-btn-key">
                        <a href="Login">Continue</a>
                    </div>
                </div>
            </div>
            <div class="col-md-5 col-sm-6" style="margin-top:5%;" >
                <img src="../../Index/Resources/Images/tick.png" />
            </div>
        </div>
    </section>
</body>
</html>