<%@ Page Title="Transaction" Language="C#" MasterPageFile="~/web/dashboard/access/Dashboard.Master" AutoEventWireup="true" CodeBehind="transactions.aspx.cs" Inherits="Rook_Atlas.web.dashboard.access.transaction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="access_content" Runat="Server">

    <div class="main-panel">
        <div class="sub-header">
        <a>Transcations</a>
        </div>
        <div class="sub-panel">
             <table class="transcations-table">
                <tr>
                    <th>#</th>
                    <th>Reference No.</th>
                    <th>Transcation ID</th>
                    <th>Description</th>
                    <th>Amount</th>
                    <th>Date</th>
                    <th>Status</th>
                </tr>
                <tr>
                    <td>01</td>
                    <td>10011901</td>
                    <td>₹ 23517.00</td>
                    <td>Not done</td>
                    <td>Not done</td>
                    <td>Thisis</td>
                    <td>10011902</td>
                </tr>

                <tr>
                    <td>02</td>
                    <td>10011902</td>
                    <td>₹ 23517.00</td>
                    <td>Not done</td>
                    <td>Thisis</td>
                    <td>Complete</td>
                    <td>Continue</td>
                </tr>
                <tr>
                    <td>03</td>
                    <td>10011903</td>
                    <td>₹ 23517.00</td>
                    <td>Not done</td>
                     <td>Not done</td>
                    <td>Thisis</td>
                    <td>Complete</td>

                </tr>
            </table>
        </div>
    </div>

</asp:Content>