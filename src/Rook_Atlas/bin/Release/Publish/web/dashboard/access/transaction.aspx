<%@ Page Title="Transactions" Language="C#" MasterPageFile="~/web/dashboard/access/DashBoard.Master" AutoEventWireup="true" CodeBehind="transaction.aspx.cs" Inherits="Rook_Atlas.web.dashboard.access.transaction1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main_content" runat="server">
<div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header card-header-primary">
                            <h4 class="card-title">Transactions</h4>
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
                                    </tr>
                                    <tbody style="text-align: center;">
                                       
                                      <tr>
                                            <td></td>
                                            <td></td>
                                            <td>No Record Found</td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                       
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
