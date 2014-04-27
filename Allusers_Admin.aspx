<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.master" AutoEventWireup="true" CodeFile="Allusers_Admin.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="styles/layout.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div class="wrapper col3">
  <div id="intro">
    <div class="fl_left">
       Usertype:   &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="User_TypeDetails" DataValueField="User_TypeID">
         </asp:DropDownList>



         <br />
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RidersConnectionConnectionString %>" SelectCommand="SELECT UserInformation_UserType.User_ID, UserInformation_UserType.User_TypeID, User_Information.User_ID AS Expr1, User_Information.FirstName, User_Information.MiddleName, User_Information.LastName, User_Information.Email FROM User_Information INNER JOIN UserInformation_UserType ON User_Information.User_ID = UserInformation_UserType.User_ID AND UserInformation_UserType.User_TypeID = @userid">
             <SelectParameters>
                 <asp:ControlParameter ControlID="DropDownList1" Name="userid" PropertyName="SelectedValue" />
             </SelectParameters>
         </asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RidersConnectionConnectionString %>" SelectCommand="SELECT * FROM [User_Type]"></asp:SqlDataSource>
         <br />
         <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Expr1" DataSourceID="SqlDataSource1" PageSize="20" CellPadding="4" ForeColor="Black" GridLines="Horizontal" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
             <Columns>
                 <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" >
                 <ItemStyle Font-Size="Small" />
                 </asp:BoundField>
                 <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" SortExpression="MiddleName" >
                 <ItemStyle Font-Size="Small" />
                 </asp:BoundField>
                 <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" >
                 <ItemStyle Font-Size="Small" />
                 </asp:BoundField>
                 <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" >
                 <ItemStyle Font-Size="Small" />
                 </asp:BoundField>
                 <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" ShowEditButton="True" >
                 <ItemStyle Font-Size="Small" />
                 </asp:CommandField>
             </Columns>
             <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
             <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
             <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F7F7F7" />
             <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
             <SortedDescendingCellStyle BackColor="#E5E5E5" />
             <SortedDescendingHeaderStyle BackColor="#242121" />
         </asp:GridView>
         <br />
       

 </div>
  
    <br class="clear" />
  </div>
</div>
   


</asp:Content>

