<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/web/dashboard/access/Dashboard.Master" AutoEventWireup="true" CodeBehind="mypage.aspx.cs" Inherits="Rook_Atlas.web.dashboard.access.mypage" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="access_content" Runat="Server">
    <div class="main-pane">
        <div class="global-utility">
            <div class="global-ribbion-header">
                    <a>Fee Analysis</a>
            </div>
            <div class="utility-content-heading">
  
                
            </div>
        </div> 

        <div class="global-ribbion-details">
            
                <div class="fee-box">
                <div class="box-fee">

                    <h3>Total Fee:</h3> 
                    <a>₹ </a><a><asp:Label ID="fee_price" runat="server" Text="298000.00"></asp:Label></a>
                </div>
                <div class="box-paid">
                   <h3> Fee Paid:</h3>
                    <a>₹ </a><a><asp:Label ID="fee_paid" runat="server" Text="0.00"></asp:Label></a>
                </div>
                </div>
                <div class="global-ribbion-header">
                    <a>Details</a>
                </div>
            
                <div class="sub-details-user">
                    <a>
                        <asp:Label ID="user_name" runat="server" Text="USER_NAME"></asp:Label>
                    </a>
                </div>
           
                <div class="sub-details">
                    <div class="sub-base">
                        <div class="sub-base-left">
                                <a> Univ. Seat No</a><br />
                                <a> Semester</a><br />
                                <a> Admission Category</a><br />
                                <a> Course</a><br />
                        </div>
                        <div class="sub-base-left-middle">
                            <a>:</a><br />
                            <a>:</a><br />
                            <a>:</a><br />
                           
                            <a>:</a><br />
                        </div>
                        <div class="sub-base-right">
                            <a>&nbsp&nbsp</a><a><asp:Label ID="user_usn" runat="server" Text="default_usn"></asp:Label></a><br />
                            <a>&nbsp&nbsp</a><a><asp:Label ID="user_year" runat="server" Text="default_acyear"></asp:Label><br />
                            <a>&nbsp&nbsp</a><a><asp:Label ID="user_adc" runat="server" Text="default_adc"></asp:Label></a><br />
                            <a>&nbsp&nbsp</a><a><asp:Label ID="user_crs" runat="server" Text="default_crs"></asp:Label></a><br />
                        </div>
                    </div>
               </div> 
        </div>
        <div class="global-ribbion-payment">
                <div class="global-ribbion-header">
                    <a>Fee Payment</a>
                </div>
                <div class="payment-box">
  <table class="customers">
  <tr>
    <th>#</th>
    <th>Reference No.</th>
    <th>Amount</th>
    <th>Payment Staus</th>
    <th> ₹ </th>
  </tr>
  <tr>
    <td>01</td>
    <td>10011901</td>
    <td>₹ 23517.00</td>
    <td>Not done</td>
  <td>
      <div class="payment-link">
        <asp:Button ID="Button1" runat="server" CssClass="pay-button" Text="Pay" />
      </div>
    </tr>

    <tr>
        <td>02</td>
    <td>10011902</td>
    <td>₹ 23517.00</td>
    <td>Not done</td>
                               <td>
        <asp:Button ID="Button2" runat="server" CssClass="pay-button" Text="Pay" />
      
    </tr>
    <tr>
        <td>03</td>
    <td>10011903</td>
    <td>₹ 23517.00</td>
    <td>Not done</td>
    <td>
        <asp:Button ID="Button3" runat="server" CssClass="pay-button" Text="Pay" />
    </tr>
</table>
                                   
                <!-----------------        -->

        </div>
        </div>
        </div>
</asp:Content>