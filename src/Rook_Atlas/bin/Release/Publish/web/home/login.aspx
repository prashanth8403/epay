<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="login.aspx.cs" Inherits="Rook_Atlas.web.home.nlogin" %>
<!-- 
(C) 2018, CopyRight Rook Labs, Bengaluru.
-->

<!DOCTYPE html>
<html lang="en">
<head>
    
    <title>LOGIN - BMSIT EPAY</title>

    <!-- MetaData -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="BMSIT Payment Portal powered by Rook labs" />
    <meta name="keywords" content="bmsit, bmsit epay, bmsit.rooklabs.net, epay, rooklabs, payment, www.rooklabs.net" />
    <meta charset="utf-8">
	
    <!-- MetaData -->
    <meta name="description" content="BMSIT EPAY powered by Rook labs" />
	<meta name="keywords" content="bmsit, bmsit epay, bmsit.rooklabs.net, epay, rooklabs,bmsit payment, www.rooklabs.net" />
    
    <!-- Favicon -->
    <link rel="icon" type="image/png" href="../../favicon.png" />
    
    <!-- Style Sheets -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Codystar|Monoton|Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link href="../../Index/Styles/Hubbali.css" rel="stylesheet" />
    <link href="../../Index/Styles/Dharward.css" rel="stylesheet" />
    <link href="../../Index/Styles/Kalaburgi.css" rel="stylesheet" />
    <link href="../../Index/Styles/MountAbu.css" rel="stylesheet" />
</head>

    <!-- MainContent -->
<body>
    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">
                <form runat="server" id="login_from" class="login100-form validate-form">
                    <div class="logo-text"style="color:#2853ef;">
                        <a  class="bmsit-new">BMSIT </a><a class="pay-new">ePay</a>
                    </div>
                    <div class="error-message">
                        <asp:Label ID="Error_msg" runat="server" Text=""></asp:Label>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                            runat="server" CssClass="validator"
                            ErrorMessage="Invalid User ID" ControlToValidate="usernamebox"
                            ValidationExpression="^[0-9]{6}$">
                        </asp:RegularExpressionValidator>
                    </div>
                    <div class="group">
                        <asp:TextBox ID="usernamebox" type="text" style="font-size:18px;" required="required" runat="server"></asp:TextBox>
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <label class="login-lable">User ID</label>
                    </div>
                    <div class="group">
                        <asp:TextBox ID="passwordbox" type="password" required="required" runat="server"></asp:TextBox>
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <label class="login-lable">Password</label>
                    </div>
                    <div class="login-button">
                        <asp:Button ID="login_button" runat="server" Text="Login" CssClass="button-primary" OnClick="login_button_Click" />
                    </div>
                    <div class="text-center p-t-90">
                        <a class="reset" href="#">Forgot Password?
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>