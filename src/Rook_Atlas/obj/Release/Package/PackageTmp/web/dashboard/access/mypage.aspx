<%@ Page Title="Dashboard" Language="C#"  MasterPageFile="~/web/dashboard/access/DashBoard.Master" AutoEventWireup="true" CodeBehind="mypage.aspx.cs" Inherits="Rook_Atlas.web.dashboard.access.mypage1" %>

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
                                <a>
                                    <asp:Label ID="UserName" runat="server" Text="name"></asp:Label></a><br />
                                <a>
                                    <asp:Label ID="UserUsn" runat="server" Text="usn"></asp:Label></a><br />
                                <a>
                                    <asp:Label ID="UserAdcYear" runat="server" Text="sem"></asp:Label></a><br />
                                <a>
                                    <asp:Label ID="UserAdmCat" runat="server" Text="admcat"></asp:Label></a><br />
                                <a>
                                    <asp:Label ID="UserCourse" runat="server" Text="course"></asp:Label></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats payment">
                        <div class="total-fee">
                            <h3>Total Due:</h3>
                            <div class="fee-anchor">
                                <a class="ruppee-symbol">₹ </a><a>
                                    <asp:Label ID="NetFee" runat="server" Text="0.00"></asp:Label></a>
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
                                        <th style="font-family: 'Roboto'; font-size: 16px; color: #4facfe;">Reference No.</th>
                                        <th style="font-family: 'Roboto'; font-size: 16px; color: #4facfe;">Particulars</th>
                                        <th style="font-family: 'Roboto'; font-size: 16px; color: #4facfe;">Net Amount</th>
                                        <th style="font-family: 'Roboto'; font-size: 16px; color: #4facfe;">Paid Amount</th>
                                        <th style="font-family: 'Roboto'; font-size: 16px; color: #4facfe;">Due Date</th>
                                        <th style="font-family: 'Roboto'; font-size: 16px; color: #4facfe;">Payment Staus</th>
                                        <th style="font-family: 'Roboto'; font-size: 16px; color: #4facfe;">* </th>
                                    </tr>
                                    <asp:PlaceHolder ID="paymentsContent" runat="server"></asp:PlaceHolder>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
