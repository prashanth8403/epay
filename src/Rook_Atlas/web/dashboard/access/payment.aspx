<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="payment.aspx.cs" Inherits="Rook_Atlas.web.dashboard.access.payment" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" />
    <link href="../../Index/Styles/Kalaburgi.css" rel="stylesheet" />
    <link href="../../Index/Styles/Bengaluru.css" rel="stylesheet" />
    <link href="../../Index/Styles/MountAbu.css" rel="stylesheet" />

</head>
<body>
    <style>
        .page-title {
            width: 100%;
            padding-bottom: 20px;
            background-color: #2196f3;
            -webkit-box-shadow: 0px 6px 19px 0px rgba(133,137,138,1);
            -moz-box-shadow: 0px 6px 19px 0px rgba(133,137,138,1);
            box-shadow: 0px 6px 19px 0px rgba(133,137,138,1)
        }

        .bmsit-text {
            font-family: 'Monoton',Arial;
            font-size: 30px;
            color: #fff;
            padding-top: 35px;
        }

        .epay-text {
            font-family: 'Codystar',Arial;
            font-size: 35px;
            color: #fff;
            padding-top: 30px;
        }

        .validator {
            color: #f01111;
        }

        .validator-active {
            font-family: Roboto,Arial;
            font-weight: 400;
            color: #f62929;
        }

        .text-logo a {
            margin-top: 30px;
        }

        .title-logo {
            margin-left: 5%;
            color: #fff;
        }
    </style>
    <asp:Panel runat="server" ID="PanelHeader" CssClass="page-title">
        <br />
        <div class="title-logo">
            <a class="bmsit-text">BMSIT</a><a class="epay-text"> EPAY</a>
        </div>
    </asp:Panel>
    <div class="container" style="margin-left: 23%; margin-right: 0px; padding-right: 0px;">
        <div class="row">
            <div class="span12">
                <form id="payment_page" runat="server" class="form-horizontal span6">
                    <fieldset style="margin-top: 7%;">
                        <legend>[Dummy Payment Gateway]</legend>

                        <div class="control-group">
                            <label class="control-label">Remaining Amount </label>
                            <div class="controls">
                                <asp:TextBox ID="RemAmount" class="input-block-level" runat="server" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <asp:RequiredFieldValidator ID="RequiredAmount" runat="server" 
                                ErrorMessage="*Enter Amount" CssClass="validator-active"
                                ControlToValidate="Amount" ></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="ValidAmount" runat="server"
                                ErrorMessage="*Enter a Valid amount" CssClass="validator-active"
                                ControlToValidate="Amount"
                                ValidationExpression="^[0-9]+$" Display="Dynamic">
                            </asp:RegularExpressionValidator>
                            <br />
                            <label class="control-label">Amount </label>
                            <div class="controls">
                                <asp:TextBox ID="Amount" class="input-block-level" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ErrorMessage="        *Enter Name" CssClass="validator-active"
                                ControlToValidate="Name" ></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                ErrorMessage="*Enter Valid Name" CssClass="validator-active"
                                ControlToValidate="Name"
                                ValidationExpression="^[aA-zZ ]+$" Display="Dynamic">
                            </asp:RegularExpressionValidator>
                            <br />
                            <label class="control-label">Card Holder's Name</label>
                            <div class="controls">
                                <asp:TextBox ID="Name" class="input-block-level" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="control-group">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="        *Enter card number" CssClass="validator-active"
                                ControlToValidate="CardNumber" ></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                ErrorMessage="*Enter a Valid card number" CssClass="validator-active"
                                ControlToValidate="CardNumber"
                                ValidationExpression="^[0-9]{16}" Display="Dynamic">
                            </asp:RegularExpressionValidator>
                            <br />
                            <label class="control-label">Card Number</label>
                            <div class="controls">
                                <asp:TextBox ID="CardNumber" class="input-block-level" runat="server" TextMode="Number"></asp:TextBox>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Card Expiry Date</label>
                            <div class="controls">
                                <div class="row-fluid">
                                    <div class="span9">
                                        <select class="input-block-level">
                                            <option>January</option>
                                            <option>February</option>
                                            <option>March</option>
                                            <option>April</option>
                                            <option>May</option>
                                            <option>June</option>
                                            <option>July</option>
                                            <option>August</option>
                                            <option>September</option>
                                            <option>October</option>
                                            <option>November</option>
                                            <option>December</option>
                                        </select>
                                    </div>
                                    <div class="span3">
                                        <select class="input-block-level">
                                            <option>2020</option>
                                            <option>2021</option>
                                            <option>2022</option>
                                            <option>2023</option>
                                            <option>2024</option>
                                            <option>2025</option>
                                            <option>2020</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="control-group">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ErrorMessage="        *Enter CVV" CssClass="validator-active"
                                ControlToValidate="CVV" ></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                                ErrorMessage="*Enter a Valid CVV" CssClass="validator-active"
                                ControlToValidate="CVV"
                                ValidationExpression="^[0-9]+$" Display="Dynamic">
                            </asp:RegularExpressionValidator>
                            <br />
                            <label class="control-label">Card CVV</label>
                            <div class="controls">
                                <div class="row-fluid">
                                    <div class="span3">
                                        <asp:TextBox ID="CVV" MaxLength="3" TextMode="Password" class="input-block-level" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="span8">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-actions">
                            <asp:Button ID="Pay" runat="server" class="btn btn-primary" Text="Pay" OnClick="Pay_Click" />
                            <asp:Button ID="Button2" CssClass="btn" runat="server" class="btn btn-primary" Text="Cancel" CausesValidation="False" OnClick="Button2_Click" />
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</body>
</html>