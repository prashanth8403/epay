<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Content.Master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="Rook_Atlas.web.home.registration" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        
        <link href="../../content/styles/StyleSheet.css" rel="stylesheet" />

        <!-- 
            Message box epic control
            -->

        <asp:Panel ID="messagebox_pane" runat="server">
            <div class="message-bind">
                <div class="message-sub">
                    <div class="message-body">
                        <asp:Label runat ="server" Text="Invaild Email ID" ID="message_lable" CssClass=""></asp:Label>
                    </div>
                    <div class="wrapper-msg">
                        <asp:Button ID="msg_ok" runat="server" CssClass="message-btn-ok" Text="Button" />
                    </div>
                </div>
            </div>
        </asp:Panel>
        <asp:Panel ID="register_personal" runat="server">
                <div class="register-main-preview"> 
                    <div class="register-main-pane">
                    <div class="pane-main">
                        <div class="pane-left">
                            <div class="left-pane-content">
                                
                            <br />
                            <br />
                            <br />
                                <div class="name-first">
                                First Name:<asp:RequiredFieldValidator CssClass="validator" ID="first_name_valid" runat="server" ErrorMessage="*Required Field" ControlToValidate="std_firstname" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator 
                                    ID="RegularExpressionValidator3" 
                                    Cssclass="validator" runat="server" 
                                    ErrorMessage="*Invalid Name"
                                    ControlToValidate="std_firstname" 
                                    ValidationExpression="^[a-zA-Z]+$" 
                                    Display="Dynamic">
                                </asp:RegularExpressionValidator>
                                <asp:TextBox ID="std_firstname"  runat="server" CssClass="text-box"></asp:TextBox>
                                <br />
                                </div>
                                <div class="name-last">
                                Last Name:<asp:RequiredFieldValidator CssClass="validator" ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required Field" ControlToValidate="std_lastname" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator 
                                    ID="RegularExpressionValidator4" 
                                    Cssclass="validator" runat="server" 
                                    ErrorMessage="*Invalid Name"
                                    ControlToValidate="std_lastname" 
                                    ValidationExpression="^[a-zA-Z]+$" 
                                    Display="Dynamic">
                                </asp:RegularExpressionValidator>
                                <asp:TextBox ID="std_lastname"  runat="server" CssClass="text-box"></asp:TextBox>
                                </div>
                                <br />
                                <div class="birthday">
                                Date of Birth (dd/mm/yyyy):<asp:RequiredFieldValidator CssClass="validator" ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required Field" ControlToValidate="date_ob" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="date_ob"  runat="server" CssClass="text-box" TextMode="Date"></asp:TextBox>
                                </div>
                                <div class="phone-number">
                                Phone Number (+91):<asp:RequiredFieldValidator CssClass="validator" ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required Field" ControlToValidate="phone_no" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator 
                                    ID="RegularExpressionValidator2" runat="server" 
                                    ErrorMessage="*Invalid Phone Number" Cssclass="validator"
                                    ValidationExpression="^[0-9]{10}$" 
                                    ControlToValidate="phone_no">
                                </asp:RegularExpressionValidator>
                                <asp:TextBox ID="phone_no"  runat="server" CssClass="text-box" MaxLength="10" TextMode="Number"></asp:TextBox>
                                </div>
                                <br />
                                <div class="name-first">
                                Father's | Gaurdian's Name:<asp:RequiredFieldValidator CssClass="validator" ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Required Field" ControlToValidate="fth_firstname" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator 
                                    ID="RegularExpressionValidator5" 
                                    Cssclass="validator" runat="server" 
                                    ErrorMessage="*Invalid Name"
                                    ControlToValidate="fth_firstname" 
                                    ValidationExpression="^[a-zA-Z]+$" 
                                    Display="Dynamic">
                                </asp:RegularExpressionValidator>
                                <asp:TextBox ID="fth_firstname" runat="server" CssClass="text-box" ></asp:TextBox>
                                </div>
                                <div class="father-last-name">
                                Father's | Gaurdian's Last Name:<asp:RequiredFieldValidator CssClass="validator" ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Required Field" ControlToValidate="fth_lastname" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator 
                                    ID="RegularExpressionValidator6" 
                                    Cssclass="validator" runat="server" 
                                    ErrorMessage="*Invalid Name"
                                    ControlToValidate="fth_lastname" 
                                    ValidationExpression="^[a-zA-Z]+$" 
                                    Display="Dynamic">
                                </asp:RegularExpressionValidator>
                                <asp:TextBox ID="fth_lastname" runat="server" CssClass="text-box" ></asp:TextBox>
                                </div>
                                <br />
                                <div class="email">
                                Email:
                                    <asp:RequiredFieldValidator CssClass="validator" ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Required Field" ControlToValidate="email_add" ForeColor="Red" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Cssclass="validator" runat="server" ErrorMessage="*Invalid Email format" ValidateRequestMode="Inherit" ControlToValidate="email_add" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                <asp:TextBox ID="email_add" runat="server" CssClass="text-box-long-email"></asp:TextBox>
                                </div>
                                <br />
                                <div class="address">
                                Mail Address:<asp:RequiredFieldValidator CssClass="validator" ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Required Field" ControlToValidate="addrs_line1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="addrs_line1" runat="server"  CssClass="text-box-long-email"  ></asp:TextBox><br />
                                <asp:TextBox ID="addrs_line2" runat="server"  CssClass="text-box-long-email"  ></asp:TextBox><br />
                                </div>
                                <div class="name-first">
                                State:
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10"
                                ControlToValidate="addrs_state" InitialValue="0"
                                    CssClass="validator" runat="server" 
                                    ErrorMessage="*Select State">        
                                </asp:RequiredFieldValidator>
                                    <br />
                                    <asp:DropDownList ID="addrs_state" runat="server" CssClass="text-box-drop">
                                            <asp:ListItem Text="-- Select State -- "  Value="0"/>
                                            <asp:ListItem Text="Karnataka" Value="Karnataka"/>
                                            <asp:listitem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                            <asp:listitem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                            <asp:ListItem Text="Assam" Value="Assam"/>
                                            <asp:ListItem Text="Bihar" Value="Bihar"/>
                                            <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh"/>
                                            <asp:ListItem Text="Goa" Value="Goa"/>
                                            <asp:ListItem Text="Gujarat" Value="Gujarat"/>
                                            <asp:ListItem Text="Haryana" Value="Haryana"/>
                                            <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh"/>
                                            <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir"/>
                                            <asp:ListItem Text="Jharkhand" Value="Jharkhand"/>
                                            <asp:ListItem Text="Kerala" Value="Kerala"/>
                                            <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh"/>
                                            <asp:ListItem Text="Maharashtra" Value="Maharashtra"/>
                                            <asp:ListItem Text="Manipur" Value="Manipur"/>
                                            <asp:ListItem Text="Meghalaya" Value="Meghalaya"/>
                                            <asp:ListItem Text="Mizoram" Value="Mizoram"/>
                                            <asp:ListItem Text="Nagaland" Value="Nagaland"/>
                                            <asp:ListItem Text="Odisha" Value="Odisha"/>
                                            <asp:ListItem Text="Punjab" Value="Punjab"/>
                                            <asp:ListItem Text="Rajasthan" Value="Rajasthan"/>
                                            <asp:ListItem Text="Sikkim" Value="Sikkim"/>
                                            <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu"/>
                                            <asp:ListItem Text="Telangana" Value="Telangana"/>
                                            <asp:ListItem Text="Tripura" Value="Tripura"/>
                                            <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh"/>
                                            <asp:ListItem Text="Uttarakhand" Value="Uttarakhand"/>
                                            <asp:ListItem Text="West Bengal" Value="West Bengal"/>
                                            <asp:ListItem Text="Andaman and Nicobar Islands" Value="Andaman and Nicobar Islands"/>
                                            <asp:ListItem Text="Dadra and Nagar Haveli" Value="Dadra and Nagar Haveli"/>
                                            <asp:ListItem Text="Daman and Diu" Value="Daman and Diu"/>
                                            <asp:ListItem Text="Delhi" Value="Delhi"/>
                                            <asp:ListItem Text="Lakshadweep" Value="Lakshadweep"/>
                                            <asp:ListItem Text="Pondicherry" Value="Pondicherry"/>
                                           <asp:ListItem Text="Chandigarh" Value="Chandigarh"/>
                                </asp:DropDownList>

                                <br />
                                </div>
                                <div class="name-last">
                                Area Pincode:<asp:RequiredFieldValidator CssClass="validator" 
                                    ID="RequiredFieldValidator9" runat="server" 
                                    ErrorMessage="*Required Field" ControlToValidate="addrs_pin" 
                                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator 
                                    ID="RegularExpressionValidator7" runat="server" 
                                    ErrorMessage="*Invalid Pincode" Cssclass="validator"
                                    ValidationExpression="^[0-9]{6}$" 
                                    ControlToValidate="addrs_pin">
                                </asp:RegularExpressionValidator>
                                <asp:TextBox ID="addrs_pin"  runat="server" CssClass="text-box" TextMode="Number"></asp:TextBox>
                                </div>
                                <br />
                                <br />
                                <br />
                                <div class="button-next-si">
                                <asp:button ID="next1" runat="server" text="Next      »" CssClass="button-switch" OnClick="next1_Click" />
                                </div> 
                                </div>
                                </div>
                                <div class="pane-right">
                                <div class="right-pane-content">
                                <br />
                                <br />
                                <br />
                                    <div class="register-contents">
                                        <br />
                                        <h2>PERSONAL DETAILS</h2>
                                        <br />
                                            <a> Fill out the form on the left.</a><br />
                                                <br />
                                                <br />         
                                                <br />  
                                        <a>Enter the Information as per College record </a><br />
                                </div>
                            </div>
                        </div>
                        </div>
                        </div>
                        </div>
                </asp:Panel> 
 
    <!-- End of Panel personal details  -->

        <asp:Panel ID="register_academic" runat="server">

        <div class="register-main-preview-aca">
        <div class="register-main-pane">
        <div class="pane-main">
        <div class="pane-left">
        <div class="left-pane-content">
            <br />
            <br />
            <br />
           <div class="name-first">
           University Seat Number:
               <asp:RequiredFieldValidator ID="RequiredFieldValidator8" 
                   runat="server" CssClass="validator" ErrorMessage="*Required Field" 
                   ControlToValidate="user_usn" Display="Dynamic">
               </asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator8" 
              runat="server" CssClass="validator" ErrorMessage="*Invalid USN" 
               ValidationExpression="^1+[A-Za-z]{2}\d{2}[a-zA-Z]{2}[0-9]{3}$" 
               ControlToValidate="user_usn" Display="Dynamic">
           </asp:RegularExpressionValidator>
           <asp:TextBox ID="user_usn"  runat="server" CssClass="text-box"></asp:TextBox><br />
           </div>
            <div class="name-last">
            Course:<asp:RequiredFieldValidator ID="RequiredFieldValidator12"
                 ControlToValidate="course_list" InitialValue="0"
                 CssClass="validator" runat="server" 
                 ErrorMessage="*Select Course">
                </asp:RequiredFieldValidator>
                <br />
            <asp:DropDownList ID="course_list" runat="server" CssClass="text-box-drop">
                <asp:ListItem Text=" -- Select Course -- " Value ="0" />
                <asp:ListItem Text="Engineering (B.Tech)" Value="Engineering (B.Tech)" />
                <asp:ListItem Text="Engineering (M.Tech)" Value="Engineering (M.Tech)" />
                <asp:ListItem Text="Bachlor of Comp. Application" Value="Bachlor of Comp. Application" />
                <asp:ListItem Text="Master of Comp. Application" Value="Master of Comp. Application" />
            </asp:DropDownList>
            </div>
            <br />

            <div class="name-first">
            Section:
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11"
                 ControlToValidate="user_sec" InitialValue="0"
                 CssClass="validator" runat="server" 
                 ErrorMessage="*Select Section">
                </asp:RequiredFieldValidator><br />
            <asp:DropDownList ID="user_sec"  runat="server" CssClass="text-box-drop">
                <asp:ListItem Text=" -- Select Section -- " Value ="0" />
                <asp:ListItem Text="A" Value="A" />
                <asp:ListItem Text="B" Value="B" />
                <asp:ListItem Text="C" Value="C" />
                <asp:ListItem Text="D" Value="D" />
                <asp:ListItem Text="E" Value="E" />
                <asp:ListItem Text="F" Value="F" />
                <asp:ListItem Text="G" Value="G" />
                <asp:ListItem Text="H" Value="H" />
            </asp:DropDownList><br />
            </div>
            <div class="name-last">
            Academic Year:
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13"
                 ControlToValidate="user_year" InitialValue="0"
                 CssClass="validator" runat="server" 
                 ErrorMessage="*Select Academic Year">
            </asp:RequiredFieldValidator>
            <br />
            <asp:DropDownList ID="user_year" runat="server" CssClass="text-box-drop">
                <asp:ListItem Text=" -- Select Section -- " Value ="0" />
                <asp:ListItem Text="I" Value="I" />
                <asp:ListItem Text="II" Value="II" />
                <asp:ListItem Text="III" Value="III" />
                <asp:ListItem Text="IV" Value="IV" />
                <asp:ListItem Text="V" Value="V" />
                <asp:ListItem Text="VI" Value="VI" />
                <asp:ListItem Text="VII" Value="VII" />
                <asp:ListItem Text="VIII" Value="VIII" />
            </asp:DropDownList><br />
            </div><br />
            <div class="email">
            Admission Category:
             <asp:RequiredFieldValidator ID="RequiredFieldValidator14"
                 ControlToValidate="user_cat" InitialValue="0"
                 CssClass="validator" runat="server" 
                 ErrorMessage="*Select Admission Category">
            </asp:RequiredFieldValidator>
             <br />
            <asp:DropDownList ID="user_cat"  runat="server" CssClass="text-box-long-email-drop">
                <asp:ListItem Text=" -- Select Admission Category -- " Value ="0" />
                <asp:ListItem Text="KEA Common Entrance Test - GM" Value="I" />
                <asp:ListItem Text="KEA Common Entrance Test - 1A/2A/3B/3A" Value="II" />
                <asp:ListItem Text="KEA Common Entrance Test - SC/ST" Value="VI" />
                <asp:ListItem Text="Comedk" Value="III" />
                <asp:ListItem Text="Management - Non-IPO/NRI" Value="IV" />
                <asp:ListItem Text="Management - IPO/NRI" Value="V" />
            </asp:DropDownList><br />
            </div><br />
            <div class="email">
            Branch:
             <asp:RequiredFieldValidator ID="RequiredFieldValidator15"
                 ControlToValidate="user_branch" InitialValue="0"
                 CssClass="validator" runat="server" 
                 ErrorMessage="*Select Branch">
            </asp:RequiredFieldValidator>
                <br />
            <asp:DropDownList ID="user_branch"  runat="server" CssClass="text-box-long-email-drop">
                <asp:ListItem Text=" -- Select Branch -- " Value ="0" />
                <asp:ListItem Text="Computer Science" Value="CSE" />
                <asp:ListItem Text="Electronics and Communication" Value="ECE" />
                <asp:ListItem Text="Electrical and Electronics" Value="EEE" />
                <asp:ListItem Text="Mechanical" Value="MEE" />
                <asp:ListItem Text="Civil" Value="CIV" />
                <asp:ListItem Text="Telecommunication" Value="TCE" />
                <asp:ListItem Text="Information Science" Value="ISE" />
            </asp:DropDownList><br />
            </div>

            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

        <div class="wrapper">
        <div class="button-prev">
            <asp:button ID="prev1" runat="server" text="«  Previous" CssClass="button-switch-prev" OnClick="prev1_Click" />
        </div>
        <div class="button-next">
            <asp:button ID="next2" runat="server" text="Next      »" CssClass="button-switch" OnClick="next2_Click" />
        </div>
        </div>
        <br />
        <br />
        <br />
        </div>
        </div>
        <div class="pane-right">
        <div class="right-pane-content">
        <br />
        <br />
        <br />
        <div class="register-contents">
            <br />
            <h2>ACADEMIC DETAILS</h2>
            <br />
            <a> Fill out the form on the left.</a><br />
            <br />
            <br />         
            <br />  
            <a>Enter the Information as per College record </a><br />
        </div>
 
        </div>
        </div>
        </div>
        </div>
        </div>
        </asp:Panel>

        <asp:Panel ID="register_auth" runat="server">
        <div class="register-main-preview-userec">
        <div class="register-main-pane">
        <div class="pane-main">
        <div class="pane-left">
        <div class="left-pane-content">

        <br />
        <br />
        <br />

        <div class="email">
            Enter Email OTP:
            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                ErrorMessage="*Required Field" 
                Display="Dynamic" CssClass="validator" 
                ControlToValidate="email_otp">
            </asp:RequiredFieldValidator>
            <asp:TextBox ID="email_otp"  runat="server" CssClass="text-box-long-email">
            </asp:TextBox><br />
            Enter Phone OTP:
            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                ErrorMessage="*Required Field" Display="Dynamic" CssClass="validator" 
                ControlToValidate="phone_otp">
            </asp:RequiredFieldValidator>
            <asp:TextBox ID="phone_otp" runat="server" type="password"
                CssClass="text-box-long-email"></asp:TextBox><br />
        </div>    
        
        <br />
        <br />
        <br />
        <br />
        <div class="wrapper">
        <div class="button-prev">
            <asp:button ID="prev2" runat="server" text="«  Previous" CssClass="button-switch-prev" OnClick="prev2_Click" />
        </div>
        <div class="button-next">
            <asp:button ID="next3" runat="server" text="Next      »" CssClass="button-switch" OnClick="next3_Click" />
        </div>
        </div>
        <br />
        <br /> 
        <br />
        </div>
        </div>
        <div class="pane-right">
        <div class="right-pane-content">
        <br />
        <br />
        <br />
        <div class="register-contents">
            <br />
            <h2>USER REGISTRATION</h2>
            <br />
            <a> Fill out the form on the left.</a><br />
            <br />
            <br />         
            <br />  
            <a>Enter the Information as per College record </a><br />
        </div>
 
        </div>
        </div>
        </div>
        </div>
        </div>
        </asp:Panel>


        <asp:Panel ID="register_credentails" runat="server">
        <div class="register-main-preview-userec">
        <div class="register-main-pane">
        <div class="pane-main">
        <div class="pane-left">
        <div class="left-pane-content">

        <br />
        <br />
        <br />

        <div class="email">
            Enter New Username:
            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                ErrorMessage="*Required Field" 
                Display="Dynamic" CssClass="validator" 
                ControlToValidate="user_id">
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator 
             ID="RegularExpressionValidator11" 
             Cssclass="validator" runat="server" 
             ErrorMessage="*Should be Alphanumeric with min. 4 aplhabet.  e.g. prash007"
             ControlToValidate="user_id" 
             ValidationExpression="^[a-zA-Z]{4,30}\d+$" 
             Display="Dynamic">
             </asp:RegularExpressionValidator>
            <asp:TextBox ID="user_id"  runat="server" CssClass="text-box-long-email">
            </asp:TextBox><br />
            Enter New Password:
            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                ErrorMessage="*Required Field" Display="Dynamic" CssClass="validator" 
                ControlToValidate="user_pass">
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator 
             ID="RegularExpressionValidator10" 
             Cssclass="validator" runat="server" 
             ErrorMessage="*Password doesn't fullfill the requirment"
             ControlToValidate="user_pass" 
             ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&+=]).*$" 
             Display="Dynamic">
             </asp:RegularExpressionValidator>
            <asp:TextBox ID="user_pass" runat="server" type="password"
                CssClass="text-box-long-email"></asp:TextBox><br />
            Confirm Password:
            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                ErrorMessage="*Required Field" Display="Dynamic" CssClass="validator"
                ControlToValidate="pass_conf">
            </asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="*Password do not Match" Display="Dynamic" 
                ControlToValidate="pass_conf" 
                ControlToCompare="user_pass"
                CssClass="validator" Operator="Equal">
            </asp:CompareValidator>
            <asp:TextBox ID="pass_conf" runat="server"  type="password"
                CssClass="text-box-long-email"></asp:TextBox><br />
            Select a Security Question:
            <asp:RequiredFieldValidator ID="RequiredFieldValidator19"
                 ControlToValidate="sec_quest" InitialValue="0"
                 CssClass="validator" runat="server" 
                 ErrorMessage="*Select Branch">
            </asp:RequiredFieldValidator><br />
            <asp:DropDownList ID="sec_quest" runat="server" CssClass="text-box-long-email-drop">
                    <asp:ListItem Text=" -- Select Security Question -- " Value="0" />
                    <asp:ListItem Text="What was your favorite place to visit as a child?" Value="1" />
                    <asp:ListItem Text="Who is your favorite actor, musician, or artist?" Value="2" />
                    <asp:ListItem Text="What is the name of your favorite pet?" Value="3" />
                    <asp:ListItem Text="What is the name of your first school?" Value="4" />
            </asp:DropDownList><br /><br />
            Answer Security Question:
            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                ErrorMessage="*Required Field" Display="Dynamic" CssClass="validator" 
                ControlToValidate="sec_answer">
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator 
             ID="RegularExpressionValidator12" 
             Cssclass="validator" runat="server" 
             ErrorMessage="*Only text answer allowed"
             ControlToValidate="sec_answer" 
             ValidationExpression="^[a-zA-Z]+$" 
             Display="Dynamic">
             </asp:RegularExpressionValidator>
            <asp:TextBox runat="server" CssClass="text-box-long-email" ID="sec_answer"></asp:TextBox><br />
        </div>    
        <br />
        <br />
        <div class="wrapper">
        <div class="button-prev">
            <asp:button ID="prev3" runat="server" text="«  Previous" CssClass="button-switch-prev" OnClick="prev3_Click" />
        </div>
        <div class="button-next">
            <asp:button ID="submit" runat="server" text="Submit      »" CssClass="button-switch" OnClick="submit_Click" />
        </div>
        </div>
        <br />
        <br /> 
        <br />
        </div>
        </div>
        <div class="pane-right">
        <div class="right-pane-content">
        <br />
        <br />
        <br />
        <div class="register-contents">
            <br />
            <h2>USER REGISTRATION</h2>
            <br />
            <a> Fill out the form on the left.</a><br />
            <br />
            <br />         
            <br />  
            <a>Enter the Information as per College record </a><br />
        </div>
 
        </div>
        </div>
        </div>
        </div>
        </div>
        </asp:Panel>
</asp:Content>