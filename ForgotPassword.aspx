<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="styles/layout.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper col5">
  <div id="container">
    <div id="content">
      <h1>Forgot my Password</h1>
    
      <div id="respond">
       
            
          <p>
              <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
            <label><small>Enter your email address</small></label> 
          </p>
            <p><asp:TextBox ID="txtSecurityQuestion" runat="server"></asp:TextBox>
            <label><small>Your Security Question</small></label></p>
            <p><asp:TextBox ID="txtSecurityAnswer" runat="server"></asp:TextBox>
                <label><small>your Security answer</small></label>
            </p>
            
            <p>
                <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" />
            &nbsp;
            <asp:Button ID="btnReset" runat="server" Text="RESET"  />
          </p>
        
      </div>
    </div>
     
     
     
    
    </div>
    <div class="clear"></div>
  
</div>
</asp:Content>

