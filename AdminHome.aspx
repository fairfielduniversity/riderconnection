<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="styles/layout.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RidersConnectionConnectionString %>" SelectCommand="SELECT [User_ID], [FirstName], [MiddleName], [LastName], [Telephone], [State] FROM [User_Information]"></asp:SqlDataSource>
    <div class="wrapper col3">
  <div id="intro">
    <div class="fl_left">
      <h2> All Existing Users!</h2>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" PageSize="4" AutoGenerateColumns="False" DataKeyNames="User_ID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="User_ID" HeaderText="User_ID" ReadOnly="True" SortExpression="User_ID" InsertVisible="False" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" >
            </asp:BoundField>
            <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" SortExpression="MiddleName"  />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName"  />
            <asp:BoundField DataField="Telephone" HeaderText="Telephone" SortExpression="Telephone" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
        <PagerSettings Mode="NextPreviousFirstLast" NextPageText="Next" PreviousPageText="Prev" FirstPageText="First" LastPageText="Last"/>
    </asp:GridView>
        <asp:Button ID="btn" runat="server" Text="BACK" PostBackUrl="~/Index.aspx" />
    </div>
    <div class="fl_right"><img src="images/demo/Trip-Planner.png" alt="" /></div>
    <br class="clear" />
  </div>
</div>


</asp:Content>

