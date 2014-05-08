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
            margin: 0 auto;
        }
        .newStyle1 {
            text-align: center;
        }
        .newStyle2 {
            width: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div style="min-height:300px">
        <asp:DataList ID="DataList1" runat="server" CssClass="table-center" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" OnItemCommand="DataList1_ItemCommand">
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="col-center width100">OFFER ID</td>
                        <td class="col-center width100">STATUS</td>
                        <td class="col-center width200">&nbsp;</td>
                    </tr>
                </table>
            </HeaderTemplate>
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <ItemTemplate>
                <table style="width: 100%; margin: 0 auto;">
                    <tr>
                        <td class="col-center width100">
                            <asp:Label ID="Offer_IDLabel" runat="server" Text='<%# Eval("Offer_ID") %>' />
                        </td>
                        <td class="col-center width100">
                            <asp:Label ID="StatusLabel" runat="server" Text='<%# (Eval("Status").ToString() == "0") ? "New" : ((Eval("Status").ToString() == "1") ? "Accepted" : "Rejected")  %>' />
                        </td>
                        <td class="col-center width200">
                            <asp:Button ID="Pay" runat="server" CommandName="Pay" Text="Pay" CommandArgument='<%# Eval("OfferLock_ID") %>' Enabled='<%# (Eval("Status").ToString() == "1") %>' />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RidersConnectionConnectionString %>" SelectCommand="SELECT [OfferLOCK_ID], [Offer_ID], [UserID], [Status] FROM [Offer_Lock] WHERE ([UserID] = @UserID)">
            <SelectParameters>
                <asp:SessionParameter Name="UserID" SessionField="Userid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

