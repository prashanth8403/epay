<%@ Page Title="" Language="C#" MasterPageFile="~/web/admin/Admin.master" AutoEventWireup="true" CodeBehind="Transaction.aspx.cs" Inherits="Rook_Atlas.web.admin.Transaction" %>
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
                                        <th style="font-family: 'Roboto'; font-size: 16px; color: #4facfe;">USN.</th>
                                        <th style="font-family: 'Roboto'; font-size: 16px; color: #4facfe;">Reference No.</th>
                                        <th style="font-family: 'Roboto'; font-size: 16px; color: #4facfe;">Transcation ID</th>
                                        <th style="font-family: 'Roboto'; font-size: 16px; color: #4facfe;">Particular</th>
                                        <th style="font-family: 'Roboto'; font-size: 16px; color: #4facfe;">Amount</th>
                                        <th style="font-family: 'Roboto'; font-size: 16px; color: #4facfe;">Staus</th>
                                        <th style="font-family: 'Roboto'; font-size: 16px; color: #4facfe;">Date</th>
                                    </tr>
                                    <tbody style="text-align: center;">
                                        <asp:PlaceHolder ID="TranscaionPlaceHolder" runat="server"></asp:PlaceHolder>
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
