<%@ Page Title="Login" Language="C#" MasterPageFile="~/Content.Master" AutoEventWireup="true" CodeBehind="errorlogin.aspx.cs" Inherits="Rook_Atlas.web.error.errorlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../../content/styles/StyleSheet.css" rel="stylesheet" />
    <div class="container-login">
        <div class="panel left">
        </div>
        <div class="panel right">
            <div class="center-data">
                <div >
                    <h3>Enter your credentials to continue</h3>
                </div>
                <div class="group-error">
                     <h6>Invalid username or password</h6>
                </div>
                <br />
                <div class="group">
                    <asp:textbox id="usernamebox" type="text" required="required" runat="server"></asp:textbox>
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <label>Username</label>
                </div>
                <div class="group">
                    <asp:textbox id="passwordbox" type="password" required="required" runat="server"></asp:textbox>
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <label>Password</label>
                </div>
                <div class="reset-left">
                    <asp:button id="login_button" runat="server" text="Login" cssclass="button-primary" OnClick="login_button_Click" />
                </div>
                <div>
                    <asp:linkbutton id="reset_link" runat="server" cssclass="asp-link" OnClick="reset_link_Click">Reset</asp:linkbutton>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
