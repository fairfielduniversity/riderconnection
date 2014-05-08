<%@ Page Title="" Language="C#" MasterPageFile="~/UserSite.master" AutoEventWireup="true" CodeFile="myoffers.aspx.cs" Inherits="Default2" %>
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
    <div style="min-height:300px">
      
        <div style="margin:20px;text-align:center; width:100%">
        Select an offer:&nbsp;
        <asp:DropDownList ID="ddlOfferID" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Offer_ID" DataValueField="Offer_ID">
        </asp:DropDownList>
        </div>
        
    <asp:DataList ID="DataList1" runat="server"  CssClass="table-center"  CellPadding="4" DataKeyField="OfferLock_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" Width="781px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="col-center width50">Id</td>
                    <td class="col-center width100">Offer ID</td>
                    <td class="col-center width300">Requested By</td>
                    <td class="col-center width100">Status</td>
                    <td class="col-center width200">&nbsp;</td>      
                </tr>
            </table>
        </HeaderTemplate>
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <ItemTemplate>
                <table style="width: 100%; margin: 0 auto;">
                <tr>
                    <td class="width50">
                        <asp:Label ID="OfferLock_IDLabel" runat="server" Text='<%# Eval("OfferLock_ID") %>' />
                    </td>
                    <td class="width100">
                        <asp:Label ID="Offer_IDLabel" runat="server" Text='<%# Eval("Offer_ID") %>' />
                    </td>
                     <td class="width300">                   
                        <asp:Label ID="User_IDLabel" runat="server" Text='<%# Eval("FIRSTNAME") + " " +  Eval("LASTNAME")%>' />
                    </td>
                    <td class="width100"">
                        <asp:Label ID="StatusLabel" runat="server" Text='<%# (Eval("Status").ToString() == "0") ? "New" : ((Eval("Status").ToString() == "1") ? "Accepted" : ((Eval("Status").ToString() == "2") ? "Rejected" : "Locked"))  %>' />
                    </td>

                    <td class="width200">
                        <asp:Button ID="Accept" runat="server" CommandName="Accept" Text="Accept" CommandArgument='<%# Eval("OfferLock_ID") %>' Enabled='<%# (Eval("maxstatus").ToString() != "3" && Eval("Status").ToString() != "1") %>' />
                        <asp:Button ID="Reject" runat="server" CommandName="Reject" Text="Reject" CommandArgument='<%# Eval("OfferLock_ID") %>' Enabled='<%# (Eval("maxstatus").ToString() != "3" && Eval("Status").ToString() != "2") %>' />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
        </div>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RidersConnectionConnectionString %>"
        SelectCommand="SELECT [OfferLock_ID], [Offer_ID], [Status], 
        (SELECT max(status) maxstatus
            FROM 
	     [Offer_Lock], 
	     [User_Information] 
        WHERE 
	        [User_Information].User_ID = [OFFER_LOCK].UserID 
AND ([OFFER_ID] =@OfferId)) maxstatus, [UserID], [FIRSTNAME], [LASTNAME] FROM [Offer_Lock], [User_Information] WHERE [User_Information].User_ID = [OFFER_LOCK].UserID AND ([OFFER_ID] = @OfferId)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlOfferId" Name="OfferId"
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RidersConnectionConnectionString %>" SelectCommand="SELECT [Offer_ID], [OfferInformation] FROM [Offer_Information] WHERE ([UserID] = @UserID)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="-1" Name="UserID" SessionField="Userid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

