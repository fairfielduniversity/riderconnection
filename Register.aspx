<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="styles/layout.css" type="text/css" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="wrapper col5">
      <div id="container">
                    <div id="content">
                                   <h1>User Registration</h1>
    
    
                                      <p> <strong>My Registration Details</strong></p>
                                      <div class="registration" >
                                      <p>
                                           <label><small>First Name (required)</small></label>
                                          <asp:TextBox ID="txtFname" runat="server" Width="200px" ></asp:TextBox>
                                        
                                      </p>
                                     
                                      <p>
                                           <label><small>Middle Name (required)</small></label>
                                          <asp:TextBox ID="txtMname" runat="server" Width="200px" ></asp:TextBox>
                                       
                                      </p>
                                        <p>
                                            <label><small>Last Name (required)</small></label>
                                             <asp:TextBox ID="txtLname" runat="server" Width="200px" ></asp:TextBox>
                                        </p>
                                      <p>
                                          <label><small>E-Mail (required)</small></label>
                                         <asp:TextBox ID="txtEmail" runat="server" Width="200px" ></asp:TextBox>
                                        
                                      </p>
                                      <p>
                                           <label><small>Password</small></label>
                                           <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ></asp:TextBox>
                                       
                                      </p>
            

                                       <p>
                                           <label><small>Security Question</small></label>
                                         <asp:TextBox ID="txtquestion" runat="server" Width="200px" ></asp:TextBox>
                                        
                                      </p>
        
                                       <p>
                                            <label><small>Security Answer</small></label>
                                         <asp:TextBox ID="txtAnswer" runat="server" Width="200px" ></asp:TextBox>
                                       
                                      </p>

                                       <p>
                                            <label for="Usertype"><small>User-Type (required)</small></label>
                                          <small> <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal" DataSourceID="SqlDataSource2" DataTextField="User_TypeDetails" DataValueField="User_TypeID">
                                            </asp:CheckBoxList></small> 
                                        </p>
                                      </div>
       
                                        <p style="font-weight: 700">My Address Details</p>
                                     <div id="address">
                                         <p>
                                              <label><small>Street Address1 (required)</small></label> 
                                         <asp:TextBox ID="txtStreetaddress1" runat="server" Width="200px" ></asp:TextBox>
                                       
                                      </p>
                                      <p>
                                           <label><small>Street Address2 (required)</small></label>
                                          <asp:TextBox ID="txtStreetaddress2" runat="server" Width="200px" ></asp:TextBox>
                                       
                                      </p>
                                        <p>
                                             <label><small>City (required)</small></label>
                                         <asp:TextBox ID="txtCity" runat="server" Width="200px" ></asp:TextBox>
                                       
                                      </p>
                                        <p>
                                        <label><small> &nbsp;State (required)</small></label>
                                          <asp:DropDownList ID="ddlState" runat="server" DataSourceID="SqlDataSource1" DataTextField="State" DataValueField="State" Height="27px" Width="140px" ></asp:DropDownList>
                                      </p>
            
           
                                        <p>  <label><small>Zip-Code (required)</small></label>
                                         <asp:TextBox ID="txtZipcode" runat="server" Width="200px" ></asp:TextBox>
                                       
                                      </p>
                                        <p> <label><small>Phone Number(required)</small></label>
                                         <asp:TextBox ID="txtPhonenumber" runat="server" Width="200px" ></asp:TextBox>
                                        
                                      </p>
                                  </div>
           
                                  <div>
       
                                      <p>
                                          <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" OnClick="btnsubmit_Click" />
                                        &nbsp;
                                        <asp:Button ID="btnReset" runat="server" Text="RESET" OnClick="btnReset_Click"/>
                                          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RidersConnectionConnectionString %>" SelectCommand="SELECT * FROM [User_Type] WHERE ([User_TypeDetails] &lt;&gt; @User_TypeDetails)">
                                              <SelectParameters>
                                                  <asp:Parameter DefaultValue="Administrator" Name="User_TypeDetails" Type="String" />
                                              </SelectParameters>
                                          </asp:SqlDataSource>
                                          <small> 
                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RidersConnectionConnectionString %>" SelectCommand="SELECT * FROM [StateName]"></asp:SqlDataSource>
                                          </small> 
                                      </p>
                                  </div>
                                    
    
     </div>
    <div class="clear"></div>
  </div>
</div>
  
</asp:Content>

