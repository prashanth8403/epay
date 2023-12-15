<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/web/dashboard/access/DashBoard.Master" AutoEventWireup="true" CodeBehind="mypage.aspx.cs" Inherits="Rook_Atlas.web.dashboard.access.mypage1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main_content" runat="server">
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="card-header card-header-warning">
                            <h4 class="card-title">User Details</h4>
                        </div>
                        
                        <div class="row-details">
                            <div class="text-header">
                                <a>Student Name:</a><br />
                                <a>University Seat Number:</a><br />
                                <a>Academic Year:</a><br />
                                <a>Admission Category:</a><br />
                                <a>Course:</a>
                            </div>
                            <div class="text-details">
                                <a><asp:Label ID="UserName" runat="server" Text="name"></asp:Label></a><br />
                                <a><asp:Label ID="UserUsn" runat="server" Text="usn"></asp:Label></a><br />
                                <a><asp:Label ID="UserAdcYear" runat="server" Text="sem"></asp:Label></a><br />
                                <a><asp:Label ID="UserAdmCat" runat="server" Text="admcat"></asp:Label></a><br />
                                <a><asp:Label ID="UserCourse" runat="server" Text="course"></asp:Label></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats payment">
                        <div class="total-fee">
                            <h3>Total Fee:</h3>
                            <div class="fee-anchor">
                                <a class="ruppee-symbol">₹ </a><a>
                                    <asp:Label ID="fee_price" runat="server" Text="0.00"></asp:Label></a>
                            </div>
                            <hr style="background-color: #fff" />
                            <a>*Not inclusive of gateway charges</a>
                        </div>
                        <br />
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats paid">
                        <div class="total-fee">
                            <h3>Fee Paid:</h3>
                            <div class="fee-anchor">
                                <a class="ruppee-symbol">₹ </a><a>
                                    <asp:Label ID="fee_paid" runat="server" Text="0.00"></asp:Label></a>
                            </div>
                            <hr style="background-color: #fff" />
                            <a>*Not inclusive of gateway charges</a>
                        </div>
                        <br />
                    </div>
                </div>
            </div>

            <div class="row">

                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header card-header-primary">
                            <h4 class="card-title ">Fee Payment</h4>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <tr class="text-primary" style="font-family: Arial; text-align: center; color: #4facfe;">
                                        <th style="font-family: 'Roboto'; font-size: 16px; color: #4facfe;">#</th>
                                        <th style="font-family: 'Roboto'; font-size: 16px; color: #4facfe;">Reference No.</th>
                                        <th style="font-family: 'Roboto'; font-size: 16px; color: #4facfe;">Amount</th>
                                        <th style="font-family: 'Roboto'; font-size: 16px; color: #4facfe;">Due Date</th>
                                        <th style="font-family: 'Roboto'; font-size: 16px; color: #4facfe;">Payment Staus</th>
                                        <th style="font-family: 'Roboto'; font-size: 16px; color: #4facfe;">* </th>
                                    </tr>
                                    <asp:Panel ID="panel_case1" runat="server">
                                        <tr style="text-align: center;">
                                            <td>01</td>
                                            <td>
                                                <asp:Label ID="ref11" runat="server" Text="Label31"></asp:Label></td>
                                            <td>₹
                                                <asp:Label ID="amt11" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="date11" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="sts11" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Button ID="pay11" runat="server" CssClass="pay-button" Text="Pay" /></td>
                                        </tr>
                                    </asp:Panel>
                                    <asp:Panel ID="panel_case2" runat="server">
                                        <tr style="text-align: center;">
                                            <td>01</td>
                                            <td>
                                                <asp:Label ID="ref21" runat="server" Text="Label31"></asp:Label></td>
                                            <td>₹
                                                <asp:Label ID="amt21" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="date21" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="sts21" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Button ID="pay21" runat="server" CssClass="pay-button" Text="Pay" />
                                        </tr>
                                        <tr style="text-align: center;">
                                            <td>02</td>
                                            <td>
                                                <asp:Label ID="ref22" runat="server" Text="Label31"></asp:Label></td>
                                            <td>₹
                                                <asp:Label ID="amt22" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="date22" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="sts22" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Button ID="pay22" runat="server" CssClass="pay-button" Text="Pay" /></td>
                                        </tr>
                                    </asp:Panel>
                                    <asp:Panel ID="panel_case3" runat="server">
                                        <tr style="text-align: center;">
                                            <td>01</td>
                                            <td>
                                                <asp:Label ID="ref31" runat="server" Text="Label31"></asp:Label></td>
                                            <td>₹
                                                <asp:Label ID="amt31" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="date31" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="sts31" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Button ID="pay31" runat="server" CssClass="pay-button" Text="Pay" />
                                        </tr>
                                        <tr style="text-align: center;">
                                            <td>02</td>
                                            <td>
                                                <asp:Label ID="ref32" runat="server" Text="Label2"></asp:Label></td>
                                            <td>₹
                                                <asp:Label ID="amt32" runat="server" Text="Label2"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="date32" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="sts32" runat="server" Text="Label2"></asp:Label></td>
                                            <td>
                                                <asp:Button ID="pay32" runat="server" CssClass="pay-button" Text="Pay" /></td>
                                        </tr>
                                        <tr style="text-align: center;">
                                            <td>03</td>
                                            <td>
                                                <asp:Label ID="ref33" runat="server" Text="Label3"></asp:Label></td>
                                            <td>₹
                                                <asp:Label ID="amt33" runat="server" Text="Label3"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="date33" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="sts33" runat="server" Text="Label3"></asp:Label></td>
                                            <td>
                                                <asp:Button ID="pay33" runat="server" CssClass="pay-button" Text="Pay" /></td>
                                        </tr>
                                    </asp:Panel>
                                    <asp:Panel ID="panel_case4" runat="server">
                                        <tr style="text-align: center;">
                                            <td>01</td>
                                            <td>
                                                <asp:Label ID="ref41" runat="server" Text="Label31"></asp:Label></td>
                                            <td>₹
                                                <asp:Label ID="amt41" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="date41" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="sts41" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Button ID="pay41" runat="server" CssClass="pay-button" Text="Pay" /></td>
                                        </tr>
                                        <tr style="text-align: center;">
                                            <td>02</td>
                                            <td>
                                                <asp:Label ID="ref42" runat="server" Text="Label31"></asp:Label></td>
                                            <td>₹
                                                <asp:Label ID="amt42" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="date42" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="sts42" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Button ID="pay42" runat="server" CssClass="pay-button" Text="Pay" /></td>
                                        </tr>
                                        <tr style="text-align: center;">
                                            <td>03</td>
                                            <td>
                                                <asp:Label ID="ref43" runat="server" Text="Label31"></asp:Label></td>
                                            <td>₹
                                                <asp:Label ID="amt43" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="date43" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="sts43" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Button ID="pay43" runat="server" CssClass="pay-button" Text="Pay" /></td>
                                        </tr>
                                        <tr style="text-align: center;">
                                            <td>04</td>
                                            <td>
                                                <asp:Label ID="ref44" runat="server" Text="Label31"></asp:Label></td>
                                            <td>₹
                                                <asp:Label ID="amt44" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="date44" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="sts44" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Button ID="pay44" runat="server" CssClass="pay-button" Text="Pay" /></td>
                                        </tr>
                                        <tr style="text-align: center;">
                                            <td>05</td>
                                            <td>
                                                <asp:Label ID="ref45" runat="server" Text="Label31"></asp:Label></td>
                                            <td>₹
                                                <asp:Label ID="amt45" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="date45" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="sts45" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Button ID="pay45" runat="server" CssClass="pay-button" Text="Pay" /></td>
                                        </tr>
                                        <tr style="text-align: center;">
                                            <td>06</td>
                                            <td>
                                                <asp:Label ID="ref46" runat="server" Text="Label31"></asp:Label></td>
                                            <td>₹
                                                <asp:Label ID="amt46" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="date46" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="sts46" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Button ID="pay46" runat="server" CssClass="pay-button" Text="Pay" /></td>
                                        </tr>
                                    </asp:Panel>
                                    <asp:Panel ID="panel_case5" runat="server">
                                        <tr style="text-align: center;">
                                            <td>01</td>
                                            <td>
                                                <asp:Label ID="ref51" runat="server" Text="Label31"></asp:Label></td>
                                            <td>₹
                                                <asp:Label ID="amt51" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="date51" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="sts51" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Button ID="pay51" runat="server" CssClass="pay-button" Text="Pay" /></td>
                                        </tr>
                                        <tr style="text-align: center;">
                                            <td>02</td>
                                            <td>
                                                <asp:Label ID="ref52" runat="server" Text="Label31"></asp:Label></td>
                                            <td>₹
                                                <asp:Label ID="amt52" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="date52" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="sts52" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Button ID="pay52" runat="server" CssClass="pay-button" Text="Pay" /></td>
                                        </tr>
                                        <tr style="text-align: center;">
                                            <td>03</td>
                                            <td>
                                                <asp:Label ID="ref53" runat="server" Text="Label31"></asp:Label></td>
                                            <td>₹
                                                <asp:Label ID="amt53" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="date53" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="sts53" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Button ID="pay53" runat="server" CssClass="pay-button" Text="Pay" /></td>
                                        </tr>
                                        <tr style="text-align: center;">
                                            <td>04</td>
                                            <td>
                                                <asp:Label ID="ref54" runat="server" Text="Label31"></asp:Label></td>
                                            <td>₹
                                                <asp:Label ID="amt54" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="date54" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="sts54" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Button ID="pay54" runat="server" CssClass="pay-button" Text="Pay" /></td>
                                        </tr>
                                        <tr style="text-align: center;">
                                            <td>05</td>
                                            <td>
                                                <asp:Label ID="ref55" runat="server" Text="Label31"></asp:Label></td>
                                            <td>₹
                                                <asp:Label ID="amt55" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="date55" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="sts55" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Button ID="pay55" runat="server" CssClass="pay-button" Text="Pay" /></td>
                                        </tr>
                                        <tr style="text-align: center;">
                                            <td>06</td>
                                            <td>
                                                <asp:Label ID="ref56" runat="server" Text="Label31"></asp:Label></td>
                                            <td>₹
                                                <asp:Label ID="amt56" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="date56" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="sts56" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Button ID="pay56" runat="server" CssClass="pay-button" Text="Pay" /></td>
                                        </tr>
                                        <tr style="text-align: center;">
                                            <td>07</td>
                                            <td>
                                                <asp:Label ID="ref57" runat="server" Text="Label31"></asp:Label></td>
                                            <td>₹
                                                <asp:Label ID="amt57" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="date57" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="sts57" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Button ID="pay57" runat="server" CssClass="pay-button" Text="Pay" /></td>
                                        </tr>
                                        <tr style="text-align: center;">
                                            <td>08</td>
                                            <td>
                                                <asp:Label ID="ref58" runat="server" Text="Label31"></asp:Label></td>
                                            <td>₹
                                                <asp:Label ID="amt58" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="date58" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="sts58" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Button ID="pay58" runat="server" CssClass="pay-button" Text="Pay" /></td>
                                        </tr>
                                        <tr style="text-align: center;">
                                            <td>09</td>
                                            <td>
                                                <asp:Label ID="ref59" runat="server" Text="Label31"></asp:Label></td>
                                            <td>₹
                                                <asp:Label ID="amt59" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="date59" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="sts59" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Button ID="pay59" runat="server" CssClass="pay-button" Text="Pay" /></td>
                                        </tr>
                                        <tr style="text-align: center;">
                                            <td>10</td>
                                            <td>
                                                <asp:Label ID="ref60" runat="server" Text="Label31"></asp:Label></td>
                                            <td>₹
                                                <asp:Label ID="amt60" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="date50" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="sts60" runat="server" Text="Label31"></asp:Label></td>
                                            <td>
                                                <asp:Button ID="pay60" runat="server" CssClass="pay-button" Text="Pay" /></td>
                                        </tr>
                                    </asp:Panel>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
