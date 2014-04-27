<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="OfferForm.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="styles/layout.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper col5">
  <div id="container">
    <div id="content">
      <h1>I am availabel</h1>
    
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
            <asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>
            <label><small>start Date</small></label>
          </p>
          <p>
            <asp:TextBox ID="txtExpiryDate" runat="server"></asp:TextBox>
            <label><small>Expiry Date</small></label>
          </p>
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
      <div id="column">
      <div class="subnav">
        <h2>Quick Navigation</h2>
        <ul>
          <li><a href="#">Update My Info</a></li>
          <li><a href="#">Privacy Settings</a>
            <ul>
              <li><a href="#">Change Password</a></li>
              <li><a href="#">Change Secret Question</a></li>
            </ul>
          </li>

        </ul>
      </div>
     
     
    
    </div>
    <div class="clear"></div>
  </div>
</div>
    </label>
</asp:Content>

