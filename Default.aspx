<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="styles/layout.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper col3">
  <div id="intro">
    <div class="fl_left">
      <h2>Find your Ride today</h2>
      <p>Offerers offer your ride , and Riders enjoy the ride !</p>
       
          <p>
              <asp:TextBox ID="txtFrom" runat="server"></asp:TextBox>
            <label><small>From(required)</small></label><asp:TextBox ID="txtFromZipCode" runat="server"></asp:TextBox>
            <label><small>Zipcode</small></label>
          </p>
          <p>
              <asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
            <label><small>To(required)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</small></label><asp:TextBox ID="txtToZipCode" runat="server"></asp:TextBox>
            <label><small>Zipcode</small></label>
          </p>
          <p>
              <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
            <label><small>Date/Time(required)</small></label>
          </p>
          <p>
           <asp:TextBox ID="txtCount" runat="server"></asp:TextBox>
            <label><small>Passengers Count</small></label>
            
          </p>
          <p>
            
              <asp:Button ID="btnReset" runat="server" Text="RESET" OnClick="btnReset_Click" /> <br/>
          </p>
       
      <p class="readmore">
          <asp:Button ID="btnFindMyRides" runat="server" Text="FIND ME MATCH" Width="143px" PostBackUrl="~/SearchResult.aspx" /></p> <br/>
    </div>
    <div class="fl_right"><img src="images/demo/Trip-Planner.png" alt="" /></div>
    <br class="clear" />
  </div>
</div>

<div class="wrapper col5">
  <div id="container">
    <div id="content">
      <h2>About Rider Connections.com</h2>
      <p> This is a website that lets various offeres offer rides and riders pick them !
    this is a website that lets various offeres offer rides and riders pick them !
  this is a website that lets various offeres offer rides and riders pick them !
this is a website that lets various offeres offer rides and riders pick them !
his is a website that lets various offeres offer rides and riders pick them !
his is a website that lets various offeres offer rides and riders pick them !his is a website that lets various offeres offer rides and riders pick them !</p>
his is a website that lets various offeres offer rides and riders pick them !
    </div>
    <div id="column">
      <div class="holder">
        <h2>Users Feedback </h2>
       
      </div>
    </div>
    <br class="clear" />
  </div>
</div>
</asp:Content>

