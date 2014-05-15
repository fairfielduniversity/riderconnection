<%@ Page Title="" Language="C#" MasterPageFile="~/UserSite.master" AutoEventWireup="true" CodeFile="myrequests.aspx.cs" Inherits="MyRequests" %>
<%@ MasterType VirtualPath="~/UserSite.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link rel="stylesheet" href="styles/layout.css" type="text/css" />
    <style type="text/css">
        .col-left {
            text-align: left;
        }

        .col-right {
            text-align: right;
        }

        .col-center {
            text-align: center;
        }

        .width100 {
            width: 100px;
            background-color: #FF9900;
        }

        .width200 {
            width: 200px;
        }

        .width300 {
            width: 300px;
        }

        .width50 {
            width: 50px;
        }

        .table-center {
            margin: 0 auto 0 0px;
        }
        .newStyle1 {
            text-align: center;
        }
        .newStyle2 {
            width: 100px;
        }
        .auto-style1 {
            background-color: #FF9900;
        }
        .auto-style2 {
            font-weight: bold;
            text-align: center;
            background-color: #FF9900;
        }
        .auto-style3 {
            font-weight: bold;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div style="min-height:300px">
        <asp:DataList ID="DataList1" runat="server" CssClass="table-center" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" OnItemCommand="DataList1_ItemCommand" >
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">ID</td>
                        <td class="auto-style3">OFFER ID</td>
                        <td class="auto-style2">Status</td>
                        <td class="auto-style3">User_Id</td>
                        <td class="auto-style3">Rate</td>
                        <td class="auto-style2">Capacity</td>
                        <td class="auto-style3">MaxDistance</td>
                        <td class="auto-style3">NAME</td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                </table>
            </HeaderTemplate>
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <ItemTemplate>
                <table class="nav-justified">
                    <tr>
                        <td><asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' /></td>
                        <td><asp:Label ID="Offer_IdLabel" runat="server" Text='<%# Eval("Offer_Id") %>' /></td>
                        <td><asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' /></td>
                        <td><asp:Label ID="User_IdLabel" runat="server" Text='<%# Eval("User_Id") %>' /></td>
                        <td><asp:Label ID="RateLabel" runat="server" Text='<%# Eval("Rate") %>' /></td>
                        <td><asp:Label ID="CapacityLabel" runat="server" Text='<%# Eval("Capacity") %>' /></td>
                        <td><asp:Label ID="MaxDistanceLabel" runat="server" Text='<%# Eval("MaxDistance") %>' /></td>
                        <td><asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' /></td>
                        <td><asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' /></td>
                    </tr>
                </table>               
            </ItemTemplate>
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RidersConnectionConnectionString %>" SelectCommand="SELECT Offer_Lock.Id, Offer_Lock.Offer_Id, Offer_Lock.Status, Offer_Lock.User_Id, Offers.Rate, Offers.Capacity, Offers.MaxDistance, User_Information.FirstName, User_Information.LastName FROM Offer_Lock INNER JOIN Offers ON Offer_Lock.Offer_Id = Offers.Id INNER JOIN User_Information ON Offer_Lock.User_Id = User_Information.User_ID WHERE (Offer_Lock.User_Id = @UserID)">
            <SelectParameters>
                <asp:SessionParameter Name="UserID" SessionField="Userid" Type="Int32" DefaultValue="-1" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

