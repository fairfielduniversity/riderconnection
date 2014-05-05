<%@ Page Title="" Language="C#" MasterPageFile="~/UserSite.master" AutoEventWireup="true" CodeFile="TransactionForm.aspx.cs" Inherits="_Default" %>
<%@ MasterType VirtualPath="~/UserSite.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link rel="stylesheet" href="styles/layout.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="wrapper col5">
    <div id="container">
     <div id="content">
      <h4>Credit Card Information</h4>
        
        <p>
            <label>Card Type:</label>
            <small>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>MasterCard</asp:ListItem>
                <asp:ListItem>Visa</asp:ListItem>
                <asp:ListItem>American Express</asp:ListItem>
                <asp:ListItem>Discover</asp:ListItem>
            </asp:RadioButtonList>
                </small>

          
        </p>
     
          <p>
              <asp:TextBox ID="txtCardNumber" runat="server" Width="210px"></asp:TextBox>
            <label><small>&nbsp; Card Number *&nbsp;&nbsp;&nbsp;</small></label>
          </p>
          <p>
              <asp:DropDownList ID="expiryMonth" runat="server">
                  <asp:ListItem Value="01">Jan</asp:ListItem>
                  <asp:ListItem Value="02">Feb</asp:ListItem>
                  <asp:ListItem Value="03">Mar</asp:ListItem>
                  <asp:ListItem Value="04">Apr</asp:ListItem>
                  <asp:ListItem Value="05">May</asp:ListItem>
                  <asp:ListItem Value="06">Jun</asp:ListItem>
                  <asp:ListItem Value="06">Jul</asp:ListItem>
                  <asp:ListItem Value="07">Aug</asp:ListItem>
                  <asp:ListItem Value="09">Sep</asp:ListItem>
                  <asp:ListItem Value="10">Oct</asp:ListItem>
                  <asp:ListItem Value="11">Nov</asp:ListItem>
                  <asp:ListItem Value="12">Dec</asp:ListItem>
              </asp:DropDownList><asp:DropDownList ID="expiryYear" runat="server">
                  <asp:ListItem>2014</asp:ListItem>
                  <asp:ListItem>2015</asp:ListItem>
                  <asp:ListItem>2016</asp:ListItem>
                  <asp:ListItem>2017</asp:ListItem>
                  <asp:ListItem>2018</asp:ListItem>
              </asp:DropDownList>
              
             <label><small>&nbsp; Expiration Date*</small></label></p>
          <p>
           <asp:TextBox ID="txtSecuritycode" runat="server" Width="98px"></asp:TextBox>
            <label><small>&nbsp; 3-digits Security Code</small></label> *</p>
          <br />
           <h4>Billing Address</h4> 
        <p>
              <asp:TextBox ID="txtName" runat="server" Width="218px"></asp:TextBox>
            <label><small>&nbsp; Full Name*</small></label></p>
        <p>
           <asp:TextBox ID="txtBillingAddress1" runat="server" Width="217px" MaxLength="10"></asp:TextBox>
            <label><small>&nbsp; Billing Address *</small></label></p>
        <p>
        <asp:TextBox ID="txbBillingAddress2" runat="server" Width="216px"></asp:TextBox>
            <label><small>&nbsp; Apartment No / Floor*</small></label></p>
       
          <p>
           <asp:TextBox ID="txtCity" runat="server" Width="216px"></asp:TextBox>
             <label><small>&nbsp; City*</small></label></p>
       <p> <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
             <label><small>&nbsp; State*</small></label></p>
        <p>
        <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
             <label><small>&nbsp;Zip*</small></label></p>
       
          <p>
              <br />
            
              <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" ForeColor="Red" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="btnReset" runat="server" Text="RESET" ForeColor="Red"  /></p> <br/>
    </div>
    
    <br class="clear" />
  
</div>
         </div>
     
</asp:Content>

