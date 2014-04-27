<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SearchResult.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="styles/layout.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RidersConnectionConnectionString %>" SelectCommand="SELECT Offer_Information.From_Zipcode, Offer_Information.To_Zipcode, Offer_Information.Start_Date, Offer_Information.Offered_Passenger_Count, User_Information.FirstName + ' ' + User_Information.LastName AS Offerer  FROM Offer_Information INNER JOIN User_Information ON Offer_Information.Offerer_UserID = User_Information.User_ID"></asp:SqlDataSource>
    <div class="wrapper col3">
  <div id="intro">
    <div class="fl_left">
      <h2> Matching Offers for you!</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="From_Zipcode" HeaderText="From" SortExpression="From_Zipcode">
                <ItemStyle Font-Size="Small" />
                </asp:BoundField>
                <asp:BoundField DataField="To_Zipcode" HeaderText="To" SortExpression="To_Zipcode">
                <ItemStyle Font-Size="Small" />
                </asp:BoundField>
                <asp:BoundField DataField="Start_Date" HeaderText="Offered Date" SortExpression="Start_Date">
                <ControlStyle Font-Size="X-Small" />
                <ItemStyle Font-Size="X-Small" />
                </asp:BoundField>
                <asp:BoundField DataField="Offered_Passenger_Count" HeaderText="Passengers" SortExpression="Offered_Passenger_Count">
                <ItemStyle Font-Size="Small" />
                </asp:BoundField>
                <asp:BoundField DataField="Offerer" HeaderText="Offerer" SortExpression="Offerer" />
                <asp:ButtonField ButtonType="Button" Text="Accept" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:Button ID="btn" runat="server" Text="BACK" PostBackUrl="~/Index.aspx" />
    </div>
    <div class="fl_right"><img src="images/demo/Trip-Planner.png" alt="" /></div>
    <br class="clear" />
  </div>
</div>


</asp:Content>

