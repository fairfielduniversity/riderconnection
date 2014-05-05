<%@ Page Title="" Language="C#"  MasterPageFile="~/AdminSite.master" AutoEventWireup="true" CodeFile="MyProfile_Admin.aspx.cs" Inherits="_Default" %>
<%@ MasterType VirtualPath="~/AdminSite.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="wrapper col3">
  <div id="intro">
    <div class="fl_left">
         <h1>My Details - Administrator</h1>
            <br /> 
         <asp:FormView ID="FormView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both" Height="222px" Width="468px">
             <EditItemTemplate>
                 Update My Personal Information<br />&nbsp;<table style="width: 100%">
                     <tr>
                         <td class="right" style="width: 158px">First Name</td>
                         <td>
                             <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' Width="300px" />
                         </td>
                     </tr>
                     <tr>
                         <td class="right" style="width: 158px">MiddleName</td>
                         <td>
                             <asp:TextBox ID="MiddleNameTextBox" runat="server" Text='<%# Bind("MiddleName") %>' Width="300px" />
                         </td>
                     </tr>
                     <tr>
                         <td class="right" style="width: 158px">LastName</td>
                         <td>
                             <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' Width="300px" />
                         </td>
                     </tr>
                     <tr>
                         <td class="right" style="width: 158px">Telephone</td>
                         <td>
                             <asp:TextBox ID="TelephoneTextBox" runat="server" Text='<%# Bind("Telephone") %>' Width="300px" />
                         </td>
                     </tr>
                     <tr>
                         <td class="right" style="width: 158px">Email</td>
                         <td>
                             <asp:TextBox ID="EmailTextBox" runat="server" ReadOnly="True" Text='<%# Bind("Email") %>' Width="300px" />
                         </td>
                     </tr>
                     <tr>
                         <td class="right" style="width: 158px">Street Address</td>
                         <td>
                             <asp:TextBox ID="Street_AddressTextBox" runat="server" Text='<%# Bind("Street_Address") %>' Width="300px" />
                         </td>
                     </tr>
                     <tr>
                         <td class="right" style="width: 158px">Apartment No</td>
                         <td>
                             <asp:TextBox ID="Apartment_NumberTextBox" runat="server" Text='<%# Bind("Apartment_Number") %>' Width="300px" />
                         </td>
                     </tr>
                     <tr>
                         <td class="right" style="width: 158px">City</td>
                         <td>
                             <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' Width="300px" />
                         </td>
                     </tr>
                     <tr>
                         <td class="right" style="width: 158px">State</td>
                         <td>
                             <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="State" DataValueField="State" Height="16px" Width="143px">
                             </asp:DropDownList>
                         </td>
                     </tr>
                     <tr>
                         <td class="right" style="width: 158px; height: 32px">Zip</td>
                         <td style="height: 32px">
                             <asp:TextBox ID="ZipcodeTextBox" runat="server" Text='<%# Bind("Zipcode") %>' Width="300px" />
                         </td>
                     </tr>
                 </table>
                 <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" ForeColor="Black" />
                 &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" ForeColor="Black" />
             </EditItemTemplate>
             <EditRowStyle BackColor="#2684B7" Font-Bold="True" ForeColor="White" />
             <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
             <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
             
 
             
             <ItemTemplate>
                 <br />
                 My Personal Information<br />
                 <table style="width: 100%">
                     <tr>
                         <td class="right" style="width: 167px">FirstName</td>
                         <td>
                             <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />
                         </td>
                     </tr>
                     <tr>
                         <td class="right" style="width: 167px">MiddleName</td>
                         <td>
                             <asp:Label ID="MiddleNameLabel" runat="server" Text='<%# Bind("MiddleName") %>' />
                         </td>
                     </tr>
                     <tr>
                         <td class="right" style="width: 167px">LastName</td>
                         <td>
                             <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
                         </td>
                     </tr>
                     <tr>
                         <td class="right" style="width: 167px">Telephone</td>
                         <td>
                             <asp:Label ID="TelephoneLabel" runat="server" Text='<%# Bind("Telephone") %>' />
                         </td>
                     </tr>
                     <tr>
                         <td class="right" style="width: 167px">Email</td>
                         <td>
                             <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                         </td>
                     </tr>
                 </table>
                 My Address<br />
                 <table style="width: 100%">
                     <tr>
                         <td class="right" style="height: 28px; width: 163px">Street Address</td>
                         <td style="height: 28px">
                             <asp:Label ID="Street_AddressLabel" runat="server" Text='<%# Bind("Street_Address") %>' />
                         </td>
                     </tr>
                     <tr>
                         <td class="right" style="width: 163px">Apartment No</td>
                         <td>
                             <asp:Label ID="Apartment_NumberLabel" runat="server" Text='<%# Bind("Apartment_Number") %>' />
                         </td>
                     </tr>
                     <tr>
                         <td class="right" style="width: 163px">City</td>
                         <td>
                             <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                         </td>
                     </tr>
                     <tr>
                         <td class="right" style="height: 28px; width: 163px">State</td>
                         <td style="height: 28px">
                             <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
                         </td>
                     </tr>
                     <tr>
                         <td class="right" style="width: 163px">Zip</td>
                         <td>
                             <asp:Label ID="ZipcodeLabel" runat="server" Text='<%# Bind("Zipcode") %>' />
                         </td>
                     </tr>
                 </table>
                 <br />

                 <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" ForeColor="Black" Font-Bold="True" />
                

                

             </ItemTemplate>
             <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
             <RowStyle BackColor="#2684B7" ForeColor="White" />
         </asp:FormView>
         <br /> 
       
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RidersConnectionConnectionString %>" SelectCommand="SELECT [State] FROM [StateName]"></asp:SqlDataSource>
       
         <br /> 
         </div>   
        <div class="fl_right">
    
      <div class="subnav">
        <h2>Quick Links</h2>
        <ul>
          <li> Update Profile</li>
            <ul>
                 <li><a href="MyProfile_Admin.aspx">Update Personal Info</a> </li>
              <li><a href="UpdatePassword.aspx">Change Privacy Settings</a> </li>
             
            </ul>

        </ul>
      </div>
     
     
    
            </div>
   


   <div class="clear"></div>
  </div>
</div>
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RidersConnectionConnectionString %>" SelectCommand="SELECT FirstName, MiddleName, LastName, Telephone, Email, Street_Address, Apartment_Number, City, State, Zipcode FROM User_Information WHERE (User_ID = @User_ID)" UpdateCommand="UPDATE User_Information SET FirstName = @firstname, MiddleName = @middlename, LastName = @lastname, Telephone = @telephone, Street_Address = @streetaddress, Apartment_Number = @apartmentnumber, City = @city, State = @state, Zipcode = @zipcode WHERE (User_ID = @User_ID)" DeleteCommand="DELETE FROM User_Information" InsertCommand="INSERT INTO User_Information(User_ID, FirstName, MiddleName, LastName, Telephone, Email) VALUES (@UserID, @FirstName, @MiddleName, @LastName, @Telephone, @Email)">
        <InsertParameters>
            <asp:Parameter Name="UserID" />
            <asp:Parameter Name="FirstName" />
            <asp:Parameter Name="MiddleName" />
            <asp:Parameter Name="LastName" />
            <asp:Parameter Name="Telephone" />
            <asp:Parameter Name="Email" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="User_ID" SessionField="Userid" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="firstname" />
            <asp:Parameter Name="middlename" />
            <asp:Parameter Name="lastname" />
            <asp:Parameter Name="telephone" />
            <asp:Parameter Name="streetaddress" />
            <asp:Parameter Name="apartmentnumber" />
            <asp:Parameter Name="city" />
            <asp:Parameter Name="state" />
            <asp:Parameter Name="zipcode" />
            <asp:SessionParameter Name="User_ID" SessionField="Userid" />
        </UpdateParameters>
    </asp:SqlDataSource>
   
</asp:Content>

