<%@ Page Title="" Language="C#" MasterPageFile="~/UserSite.master" AutoEventWireup="true" CodeFile="OfferForm.aspx.cs" Inherits="_Default" %>
<%@ MasterType VirtualPath="~/UserSite.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="styles/layout.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper col5">
  <div id="container">
    <div id="content">
      <h1>I am available</h1>
    
      <div id="respond">
       
            
          <p>
            <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
            <label><small>My user ID</small></label> 
          </p>
            <p>
            <asp:TextBox ID="txtLongitude" runat="server"></asp:TextBox>
            <label><small>Longitude</small></label>
           </p>
           
           <p>
              <asp:TextBox ID="txtLatitude" runat="server"></asp:TextBox>
                <label ><small>Latitude</small></label>
            </p>
            <p><asp:TextBox ID="txtDistance" runat="server"></asp:TextBox>
                <label><small>Distance</small></label>
            </p>
            <p>
                <asp:TextBox ID="txtRate" runat="server"></asp:TextBox>
                <label><small>My Rate</small></label>
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
              
             <label><small>&nbsp; Start Date</small></label></p>
          
           <p>
              <asp:DropDownList ID="DropDownList1" runat="server">
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
              </asp:DropDownList><asp:DropDownList ID="DropDownList2" runat="server">
                  <asp:ListItem>2014</asp:ListItem>
                  <asp:ListItem>2015</asp:ListItem>
                  <asp:ListItem>2016</asp:ListItem>
                  <asp:ListItem>2017</asp:ListItem>
                  <asp:ListItem>2018</asp:ListItem>
              </asp:DropDownList>
              
             <label><small>&nbsp; Expiration Date</small></label></p>
          <p>
            <p>
            <asp:TextBox ID="txtPassengerCount" runat="server"></asp:TextBox>
            <label ><small>Passenger Count</small></label>
          </p>
          
            <p>
            <asp:TextBox ID="txtInformation" runat="server"></asp:TextBox>
            <label><small>Information about Ride</small></label>
          </p>
          <p>
                <label for="Usertype"><small>Offer Type: (required)</small></label>
                <asp:CheckBoxList ID="chkOfferType" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Requester</asp:ListItem>
                <asp:ListItem>Offerer</asp:ListItem></asp:CheckBoxList>
                    </p>
             <p>
                 <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" />
            &nbsp;
           <asp:Button ID="btnReset" runat="server" Text="RESET" />
          </p>
        
      </div>
    </div>
 
  
    <div class="clear"></div>
  </div>
</div>
    
</asp:Content>

