<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

       <div class="wrapper col5">
      <div id="container">
                    <div id="content">
                                   <h1>Login today to find your offers !</h1>
    
    
                                      <p> <strong>Please type in your username/password</strong></p>
                                      <div class="registration" >
                                      <p>
                                           <label><small>Email Address(UserName)</small></label>
                                          <asp:TextBox ID="txtUserName" runat="server" Width="200px" ></asp:TextBox>
                                        
                                      </p>
                                     
                                      <p>
                                           <label><small>Password</small></label>
                                          <asp:TextBox ID="txtPassword" runat="server" Width="200px" TextMode="Password" ></asp:TextBox>
                                          <br /><br /> <asp:Button ID="SignIn" runat="server" Text="Sign In" OnClick="SignIn_Click" />
                                                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="ForgotPassword.aspx">Forgot Your Password</a><br /> 
                                             
                                          <p>
                                              <asp:Label ID="LoginMessage" runat="server" Text="" style="font-weight: 700; font-size: large"></asp:Label>
                                             
                                      </div> <br /> 

                         <p ><strong>Do not have Rider Connection Account ?</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="Register.aspx"><span style="font-size: medium">Register a new Account &raquo;</span></a></p>          
       
        
    
    
     </div>
    <div class="clear"></div>
  </div>
</div>
        
         
   
             

</asp:Content>

