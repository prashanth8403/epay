<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" UnobtrusiveValidationMode="None" Inherits="Rook_Atlas.web.registration.Register" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>REGISTRATION - BMSIT EPAY</title>

    <!-- Favicon -->
    <link rel="icon" type="image/png" href="../../favicon.png" />

    <!-- MetaData -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="BMSIT EPAY powered by Rook labs" />
	<meta name="keywords" content="bmsit, bmsit epay, bmsit.rooklabs.net, epay, rooklabs,bmsit payment, www.rooklabs.net" />   
 
    <!-- WebFont -->
    <link href="https://fonts.googleapis.com/css?family=Codystar|Monoton|Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" rel="stylesheet" />
    
    <!-- StyleSheet -->
    <link href="../../Index/Styles/Kalaburgi.css" rel="stylesheet" />
    <link href="../../Index/Styles/Bengaluru.css" rel="stylesheet" />
    <link href="../../Index/Styles/MountAbu.css" rel="stylesheet" />
</head>

    <!-- MainContent -->
<body>
    <form runat="server" id="register">
        <asp:Panel runat="server" ID="PanelHeader" CssClass="page-title">
            <br />
            <div class="title-logo">
                <a class="bmsit-text">BMSIT</a><a class="epay-text"> EPAY</a>
            </div>
        </asp:Panel>
        <div class="content">
            <asp:Panel ID="UserPersonal" Style="margin-top: 3%; margin-left: 5%; margin-right: 5%;" runat="server">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server"
                                                ErrorMessage="*Required Field" CssClass="validator-active"
                                                ControlToValidate="UserName"
                                                Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator
                                                ID="UserNameValid"
                                                CssClass="validator-active" runat="server"
                                                ErrorMessage="*Invalid Name"
                                                ControlToValidate="UserName"
                                                ValidationExpression="^[a-zA-Z ]+$"
                                                Display="Dynamic">
                                            </asp:RegularExpressionValidator>
                                            <div class="form-group">
                                                <asp:TextBox ID="UserName" required="required" runat="server"></asp:TextBox>
                                                <span class="highlight"></span>
                                                <span class="bar"></span>
                                                <label>Student Name:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:RequiredFieldValidator ID="FatherNameRequired" runat="server"
                                                ErrorMessage="*Required Field" CssClass="validator-active"
                                                ControlToValidate="FatherName" Display="Dynamic">
                                            </asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator
                                                ID="FatherNameValid"
                                                CssClass="validator-active" runat="server"
                                                ErrorMessage="*Invalid Name"
                                                ControlToValidate="FatherName"
                                                ValidationExpression="^[a-zA-Z ]+$"
                                                Display="Dynamic">
                                            </asp:RegularExpressionValidator>
                                            <div class="form-group">
                                                <asp:TextBox ID="FatherName" required="required" runat="server"></asp:TextBox>
                                                <span class="highlight"></span>
                                                <span class="bar"></span>
                                                <label>Father's Name:</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <asp:RequiredFieldValidator ID="MotherNameRequired" runat="server"
                                                ErrorMessage="*Required Field" CssClass="validator-active"
                                                ControlToValidate="MotherName" Display="Dynamic">
                                            </asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator
                                                ID="MotherNameValid"
                                                CssClass="validator-active" runat="server"
                                                ErrorMessage="*Invalid Name"
                                                ControlToValidate="MotherName"
                                                ValidationExpression="^[a-zA-Z ]+$"
                                                Display="Dynamic">
                                            </asp:RegularExpressionValidator>
                                            <div class="form-group">
                                                <asp:TextBox ID="MotherName" required="required" runat="server"></asp:TextBox>
                                                <span class="highlight"></span>
                                                <span class="bar"></span>
                                                <label>Mother's Name:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:RegularExpressionValidator
                                                ID="UserPhoneValid" runat="server"
                                                ErrorMessage="*Invalid Phone Number" CssClass="validator-active"
                                                ValidationExpression="^[0-9]{10}$" Display="Dynamic"
                                                ControlToValidate="UserPhone">
                                            </asp:RegularExpressionValidator>
                                            <asp:RequiredFieldValidator ID="UserPhoneRequired" runat="server"
                                                ErrorMessage="*Enter Phone Number" CssClass="validator-active"
                                                ControlToValidate="UserPhone" Display="Dynamic">
                                            </asp:RequiredFieldValidator>

                                            <div class="form-group">
                                                <asp:TextBox ID="UserPhone" required="required" runat="server"></asp:TextBox>
                                                <span class="highlight"></span>
                                                <span class="bar"></span>
                                                <label>Phone No. (+91):</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <asp:RequiredFieldValidator ID="DateofBirthRequired" runat="server"
                                                ErrorMessage="*Required Field" CssClass="validator-active"
                                                ControlToValidate="UserDOB" Display="Dynamic"
                                                ViewStateMode="Enabled">
                                            </asp:RequiredFieldValidator>
                                            <div class="form-group">
                                                <asp:TextBox ID="UserDOB" Style="text-align: right;" TextMode="Date" required="required" runat="server" ></asp:TextBox>
                                                <span class="highlight"></span>
                                                <span class="bar"></span>
                                                <label>Date of Birth:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:RequiredFieldValidator ID="UserEmailRequired" runat="server"
                                                ErrorMessage="*Required Field" CssClass="validator-active"
                                                ControlToValidate="UserEmail" Display="Dynamic">
                                            </asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator
                                                ID="UserEmailValid"
                                                CssClass="validator-active" runat="server"
                                                ErrorMessage="*Invalid Email format" Display="Dynamic"
                                                ValidateRequestMode="Inherit" ControlToValidate="UserEmail"
                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                            </asp:RegularExpressionValidator>
                                            <div class="form-group">
                                                <asp:TextBox ID="UserEmail" required="required" runat="server"></asp:TextBox>
                                                <span class="highlight"></span>
                                                <span class="bar"></span>
                                                <label>Email:</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:RequiredFieldValidator ID="MailAddressRequired" runat="server"
                                                ErrorMessage="*Required Field" CssClass="validator-active"
                                                ControlToValidate="UserAddress" Display="Dynamic">
                                            </asp:RequiredFieldValidator>
                                            <div class="form-group">
                                                <asp:TextBox ID="UserAddress" required="required" runat="server"></asp:TextBox>
                                                <span class="highlight"></span>
                                                <span class="bar"></span>
                                                <label>Mail Address:</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <asp:RequiredFieldValidator ID="UserCityValid" runat="server"
                                                ErrorMessage="*Required Field" CssClass="validator-active"
                                                ControlToValidate="UserCity" Display="Dynamic">
                                            </asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator
                                                ID="UserCityRequired"
                                                CssClass="validator-active" runat="server"
                                                ErrorMessage="*Invalid City Name"
                                                ControlToValidate="UserCity"
                                                ValidationExpression="^[a-zA-Z ]+$"
                                                Display="Dynamic">
                                            </asp:RegularExpressionValidator>
                                            <div class="form-group">
                                                <asp:TextBox ID="UserCity" required="required" runat="server"></asp:TextBox>
                                                <span class="highlight"></span>
                                                <span class="bar"></span>
                                                <label>City:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:RequiredFieldValidator ID="UserZipValid" runat="server"
                                                ErrorMessage="*Required Field" CssClass="validator-active"
                                                ControlToValidate="UserZip" Display="Dynamic">
                                            </asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator
                                                ID="UserZipRequired" runat="server" Display="Dynamic"
                                                ErrorMessage="*Invalid Pincode" CssClass="validator-active"
                                                ValidationExpression="^[0-9]{6}$"
                                                ControlToValidate="UserZip">
                                            </asp:RegularExpressionValidator>
                                            <div class="form-group">
                                                <asp:TextBox ID="UserZip" required="required" runat="server"></asp:TextBox>
                                                <span class="highlight"></span>
                                                <span class="bar"></span>
                                                <label>Pin Code:</label>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="row">

                                        <div class="col-md-6">

                                            <div class="form-group">
                                                <asp:RequiredFieldValidator ID="UserStateRequired" runat="server"
                                                    ErrorMessage="*Select State" CssClass="validator-active" InitialValue="0"
                                                    ControlToValidate="UserState" Display="Dynamic">
                                                    
                                                </asp:RequiredFieldValidator>
                                                <asp:DropDownList ID="UserState" CssClass="text-box-drop" AutoPostBack="true" runat="server" OnSelectedIndexChanged="UserState_SelectedIndexChanged">
                                                    <asp:ListItem Text="Select State" Value="0" />
                                                    <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                                    <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                                    <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                                    <asp:ListItem Text="Assam" Value="Assam" />
                                                    <asp:ListItem Text="Bihar" Value="Bihar" />
                                                    <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                                                    <asp:ListItem Text="Goa" Value="Goa" />
                                                    <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                                    <asp:ListItem Text="Haryana" Value="Haryana" />
                                                    <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                                    <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                                                    <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                                    <asp:ListItem Text="Kerala" Value="Kerala" />
                                                    <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                                    <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                                    <asp:ListItem Text="Manipur" Value="Manipur" />
                                                    <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                                                    <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                                    <asp:ListItem Text="Nagaland" Value="Nagaland" />
                                                    <asp:ListItem Text="Odisha" Value="Odisha" />
                                                    <asp:ListItem Text="Punjab" Value="Punjab" />
                                                    <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                                    <asp:ListItem Text="Sikkim" Value="Sikkim" />
                                                    <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                                                    <asp:ListItem Text="Telangana" Value="Telangana" />
                                                    <asp:ListItem Text="Tripura" Value="Tripura" />
                                                    <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                                    <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                                                    <asp:ListItem Text="West Bengal" Value="West Bengal" />
                                                    <asp:ListItem Text="Andaman and Nicobar Islands" Value="Andaman and Nicobar Islands" />
                                                    <asp:ListItem Text="Dadra and Nagar Haveli" Value="Dadra and Nagar Haveli" />
                                                    <asp:ListItem Text="Daman and Diu" Value="Daman and Diu" />
                                                    <asp:ListItem Text="Delhi" Value="Delhi" />
                                                    <asp:ListItem Text="Lakshadweep" Value="Lakshadweep" />
                                                    <asp:ListItem Text="Pondicherry" Value="Pondicherry" />
                                                    <asp:ListItem Text="Chandigarh" Value="Chandigarh" />
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>

                                    <br />
                                    <div class="row-x">
                                        <asp:Button ID="next1" AutoPostback="true" class="btn btn-primary" OnClick="next1_Click" Style="margin-left: 45%;" runat="server" Text="NEXT" />

                                    </div>
                                </div>
                                <br />
                            </div>

                        </div>

                        <div class="col-md-4">
                            <div class="card card-profile">
                                <div class="card-header card-header-primary">
                                    <h4 class="card-title">PERSONAL DETAILS</h4>
                                    <p class="card-category">1 of 4</p>
                                </div>
                                <div class="card-body">
                                    <div class="compat">
                                        <i><img src="../../Index/Resources/RegisterX/profile1.png" /></i>
                                        <h5 style="font-family:'Roboto',Arial" class="card-category text-gray">Fill out the form on the left</h5>
                                        <h5 style="font-family:'Roboto',Arial" class="card-category text-gray">Enter all the Fields with Relevant Information, as per College Record.</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="UserAcademic" Style="margin-top: 3%; margin-left: 5%; margin-right: 5%;" runat="server">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <asp:RequiredFieldValidator ID="UserUsnRequired"
                                                runat="server" CssClass="validator-active" ErrorMessage="*Enter Usn"
                                                ControlToValidate="UserUsn" Display="Dynamic">
                                            </asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="UserUsnValid"
                                                runat="server" CssClass="validator" ErrorMessage="*Invalid USN"
                                                ValidationExpression="^1+[A-Za-z]{2}\d{2}[a-zA-Z]{2}[0-9]{3}$"
                                                ControlToValidate="UserUsn" Display="Dynamic">
                                            </asp:RegularExpressionValidator>
                                            <div class="form-group">
                                                <asp:TextBox ID="UserUsn" required="required" runat="server"></asp:TextBox>
                                                <span class="highlight"></span>
                                                <span class="bar"></span>
                                                <label>University Seat Number:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:RequiredFieldValidator ID="UserCourseRequired"
                                                runat="server" CssClass="validator-active" ErrorMessage="*Select Course"
                                                ControlToValidate="UserCourse" Display="Dynamic" InitialValue="0">
                                            </asp:RequiredFieldValidator>
                                            <div class="form-group">
                                                <asp:DropDownList ID="UserCourse" class="text-box-drop"
                                                    AutoPostBack="True" runat="server"
                                                    OnSelectedIndexChanged="UserCourse_SelectedIndexChanged">
                                                    <asp:ListItem Value="0">Select Course</asp:ListItem>
                                                    <asp:ListItem Text="Engineering (B.Tech)" Value="1" />
                                                    <asp:ListItem Text="Engineering (M.tech)" Value="2" />
                                                    <asp:ListItem Text="Master of Comp. Application" Value="3" />
                                                    <asp:ListItem Text="Bachlor of Comp. Application" Value="4" />
                                                    <asp:ListItem Text="Architecture" Value="5" />
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <asp:RequiredFieldValidator ID="UserSectionRequired"
                                                runat="server" CssClass="validator-active" ErrorMessage="*Select Section"
                                                ControlToValidate="UserSection" Display="Dynamic" InitialValue="0">
                                            </asp:RequiredFieldValidator>
                                            <div class="form-group">
                                                <asp:DropDownList ID="UserSection" AutoPostBack="True"
                                                    class="text-box-drop" runat="server"
                                                    OnSelectedIndexChanged="UserSection_SelectedIndexChanged">
                                                    <asp:ListItem Text="Select Section" Value="0" />
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:RequiredFieldValidator ID="UserAcademicYearRequired"
                                                runat="server" CssClass="validator-active" ErrorMessage="*Select Academic Year"
                                                ControlToValidate="UserAcademicYear" Display="Dynamic" InitialValue="0">
                                            </asp:RequiredFieldValidator>
                                            <div class="form-group">
                                                <asp:DropDownList ID="UserAcademicYear" AutoPostBack="True"
                                                    class="text-box-drop" runat="server"
                                                    OnSelectedIndexChanged="UserAcademicYear_SelectedIndexChanged">
                                                    <asp:ListItem Text="Select Academic Year" Value="0" />
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <asp:RequiredFieldValidator ID="UserCategoryRequired"
                                                runat="server" CssClass="validator-active"
                                                ErrorMessage="*Select Admission Category" InitialValue="0"
                                                ControlToValidate="UserCategory" Display="Dynamic">
                                            </asp:RequiredFieldValidator>
                                            <div class="form-group">
                                                <asp:DropDownList ID="UserCategory" AutoPostBack="True"
                                                    class="text-box-drop" runat="server"
                                                    OnSelectedIndexChanged="UserCategory_SelectedIndexChanged">
                                                    <asp:ListItem Text="Select Admission Category" Value="0" />
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:RequiredFieldValidator ID="UserBranchRequired"
                                                runat="server" CssClass="validator-active"
                                                ErrorMessage="*Select Branch" InitialValue="0"
                                                ControlToValidate="UserBranch" Display="Dynamic">
                                            </asp:RequiredFieldValidator>
                                            <div class="form-group">
                                                <asp:DropDownList ID="UserBranch" AutoPostBack="True"
                                                    class="text-box-drop" runat="server"
                                                    OnSelectedIndexChanged="UserBranch_SelectedIndexChanged">
                                                    <asp:ListItem Text="Select Branch" Value="0" />
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <asp:Button ID="next2" class="btn btn-primary" OnClick="next2_Click"
                                            Style="margin-left: 45%;" runat="server" Text="NEXT" />
                                    </div>
                                </div>
                                <br />
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="card card-profile">
                                <div class="card-header card-header-primary">
                                    <h4 class="card-title">ACADEMIC DETAILS</h4>
                                    <p class="card-category">2 of 4</p>
                                </div>
                                <div class="card-body">
                                    <div class="compat">
                                        <i><img src="../../Index/Resources/RegisterX/academic1.png" /></i>
                                        <h5 class="card-category text-gray">Fill out the form on the left</h5>
                                        <h5 class="card-category text-gray">Enter the Academic Information of the Current Academic Year as per College Record</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="UserAuthentication" Style="margin-top: 3%; margin-left: 5%; margin-right: 5%;" runat="server">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="card">
                                <div class="card-body">
                                    <asp:RequiredFieldValidator ID="UserOTPValid" runat="server"
                                        ErrorMessage="*Enter OTP" CssClass="validator-active"
                                        ControlToValidate="Kader" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator
                                        ID="UserOTPRequired" runat="server" Display="Dynamic"
                                        ErrorMessage="*Invalid OTP" CssClass="validator-active"
                                        ValidationExpression="^[0-9]{6}$"
                                        ControlToValidate="Kader">
                                    </asp:RegularExpressionValidator>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:Label ID="OtpMsg" CssClass="validator-active" runat="server" Text=""></asp:Label>
                                            <div class="form-group">
                                                <asp:TextBox ID="Kader" required="required" runat="server"></asp:TextBox>
                                                <span class="highlight"></span>
                                                <span class="bar"></span>
                                                <label>Enter One Time Password:</label>
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <asp:Button ID="next3" class="btn btn-primary" OnClick="next3_Click"
                                            Style="margin-left: 45%;" runat="server" Text="NEXT" />
                                    </div>
                                </div>
                                <br />
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="card card-profile">
                                <div class="card-header card-header-primary">
                                    <h4 class="card-title">AUTHENTICATION</h4>
                                    <p class="card-category">3 of 4</p>
                                </div>
                                <div class="card-body">
                                    <div class="compat">
                                        <i><img src="../../Index/Resources/RegisterX/auth1.png" /></i>
                                        <h5 class="card-category text-gray">Enter the One Time Password Sent to :</h5>
                                        <h5 style="font-weight:600; color:#202020;" class="card-category"></h5>
                                        <asp:Label style="font-weight:600; font-family:'Roboto',Arial; color:#2f2f2f;" class="card-category" ID="EmailLableOTP" runat="server"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="UserSet" Style="margin-top: 3%; margin-left: 5%; margin-right: 5%;" runat="server">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server"
                                                ErrorMessage="*Enter Password" Display="Dynamic" CssClass="validator-active"
                                                ControlToValidate="Golf">
                                            </asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator
                                                ID="RegularExpressionValidator10"
                                                CssClass="validator-active" runat="server"
                                                ErrorMessage="* Password doesn't fullfill the requirment"
                                                ControlToValidate="Golf"
                                                ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&+=]).*$"
                                                Display="Dynamic">
                                            </asp:RegularExpressionValidator>
                                            <div class="form-group">
                                                <asp:TextBox ID="Golf" required="required" TextMode="Password" runat="server"></asp:TextBox>
                                                <span class="highlight"></span>
                                                <span class="bar"></span>
                                                <label>Enter New Password:</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server"
                                                ErrorMessage="*Enter Password Again" Display="Dynamic" CssClass="validator-active"
                                                ControlToValidate="Romeo">
                                            </asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server"
                                                ErrorMessage="*Password do not Match" Display="Dynamic"
                                                ControlToValidate="Romeo"
                                                ControlToCompare="Golf"
                                                CssClass="validator-active" Operator="Equal">
                                            </asp:CompareValidator>
                                            <div class="form-group">
                                                <asp:TextBox ID="Romeo" required="required" TextMode="Password" runat="server"></asp:TextBox>
                                                <span class="highlight"></span>
                                                <span class="bar"></span>
                                                <label>Confirm Password:</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19"
                                                ControlToValidate="UserSecurity" InitialValue="0"
                                                CssClass="validator-active" runat="server"
                                                ErrorMessage="*Select Security Question">
                                            </asp:RequiredFieldValidator>
                                            <div class="form-group">
                                                <asp:DropDownList ID="UserSecurity" class="text-box-drop" runat="server">
                                                    <asp:ListItem Value="0">Select Security Question</asp:ListItem>
                                                    <asp:ListItem Text="What was your favorite place to visit as a child?" Value="1" />
                                                    <asp:ListItem Text="Who is your favorite actor, musician, or artist?" Value="2" />
                                                    <asp:ListItem Text="What is the name of your favorite pet?" Value="3" />
                                                    <asp:ListItem Text="What is the name of your first school?" Value="4" />
                                                    <asp:ListItem Text="What is your first Computer Brand?" Value="5" />
                                                    <asp:ListItem Text="What is your first teachers name?" Value="6" />
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:RequiredFieldValidator ID="UserAnswerRequired"
                                                ControlToValidate="Alpha"
                                                CssClass="validator-active" runat="server"
                                                ErrorMessage="*Select Security Question">
                                            </asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator
                                                ID="UserAnswerValid"
                                                CssClass="validator-active" runat="server"
                                                ErrorMessage="*Only text answers allowed"
                                                ControlToValidate="Alpha"
                                                ValidationExpression="^[a-zA-Z]+$"
                                                Display="Dynamic">
                                            </asp:RegularExpressionValidator>
                                            <div class="form-group">
                                                <asp:TextBox ID="Alpha" required="required" runat="server"></asp:TextBox>
                                                <span class="highlight"></span>
                                                <span class="bar"></span>
                                                <label>Answer Security Question:</label>
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <asp:Button ID="submit" class="btn btn-primary" OnClick="submit_Click"
                                            Style="margin-left: 45%;" runat="server" Text="SUBMIT" />
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <br />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card card-profile">
                                <div class="card-header card-header-primary">
                                    <h4 class="card-title">USER CREDENTAILS</h4>
                                    <p class="card-category">4 of 4</p>
                                </div>
                                <div class="card-body">
                                    <div class="compat">
                                        <i><img src="../../Index/Resources/RegisterX/cred1.png" /></i>
                                        <h5 class="card-category text-gray">Fill out the form on the left</h5>
                                        <h5 class="card-category text-gray">Enter the Information as per College Record</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>