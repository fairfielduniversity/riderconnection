<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.master" AutoEventWireup="true" CodeFile="UpdatePassword.aspx.cs" Inherits="UpdatePassword" %>
<%@ MasterType VirtualPath="~/AdminSite.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


      <div class="wrapper col3">
  <div id="intro">
    <div class="fl_left">
         <h1>My Privacy Settings - Administrator</h1>
       
        <p>
            <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Both" Width="382px">
                <EditItemTemplate>
                    Change Privacy&nbsp; Details<table style="width: 100%">
                        <tr>
                            <td class="right" style="width: 169px">Email</td>
                            <td>
                                <asp:TextBox ID="EmailTextBox" runat="server" ReadOnly="True" Text='<%# Bind("Email") %>' Width="300px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="right" style="width: 169px">Password</td>
                            <td>
                                <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' Width="300px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="right" style="width: 169px">Security Question</td>
                            <td>
                                <asp:TextBox ID="Security_QuestionTextBox" runat="server" Text='<%# Bind("Security_Question") %>' Width="300px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="right" style="width: 169px">Answer</td>
                            <td>
                                <asp:TextBox ID="Security_answerTextBox" runat="server" Text='<%# Bind("Security_answer") %>' Width="300px" />
                            </td>
                        </tr>
                    </table>
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" ForeColor="Black" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" ForeColor="Black" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#2684B7" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
              
              
                <ItemTemplate>
                    Change Privacy Details<br />
                    <table style="width: 100%">
                        <tr>
                            <td class="right" style="width: 167px">Email</td>
                            <td>
                                <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="right" style="width: 167px">Password</td>
                            <td>
                                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Bind("Password") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="right" style="width: 167px">Security Question</td>
                            <td>
                                <asp:Label ID="Security_QuestionLabel" runat="server" Text='<%# Bind("Security_Question") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="right" style="width: 167px">Answer</td>
                            <td>
                                <asp:Label ID="Security_answerLabel" runat="server" Text='<%# Bind("Security_answer") %>' />
                            </td>
                        </tr>
                    </table>
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" Font-Bold="True" ForeColor="Black" />

                  
                </ItemTemplate>
                <PagerStyle BackColor="#2684B7" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#2684B7" ForeColor="White" />
            </asp:FormView>
         </p>
         </div>   
        <div class="fl_right">
    
      <div class="subnav">
        <h2>Quick Links</h2>
        <ul>
          <li> Update Profile</li>
            <ul>
                 <li><a href="MyProfile_Admin.aspx">Update Personal Info</a> </li>
              <li><a href="UpdatePassword.aspx">Change PrivacySettings</a> </li>
            </ul>

        </ul>
      </div>
     
     
    
            </div>
   


   <div class="clear">
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RidersConnectionConnectionString %>" DeleteCommand="DELETE FROM User_Information" InsertCommand="INSERT INTO User_Information(User_ID, FirstName, MiddleName, LastName) VALUES (,,,)" SelectCommand="SELECT Password, Email, Security_Question, Security_answer FROM User_Information WHERE (User_ID = @userid)" UpdateCommand="UPDATE User_Information SET Password = @password, Email = @email, Security_Question = @question, Security_answer = @answer WHERE (User_ID = @userid)">
           <SelectParameters>
               <asp:SessionParameter Name="userid" SessionField="Userid" />
           </SelectParameters>
           <UpdateParameters>
               <asp:Parameter Name="password" />
               <asp:Parameter Name="email" />
               <asp:Parameter Name="question" />
               <asp:Parameter Name="answer" />
               <asp:Parameter Name="userid" />
           </UpdateParameters>
       </asp:SqlDataSource>
      </div>
  </div>
</div>


</asp:Content>

