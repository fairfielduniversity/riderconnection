<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Howitworks.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="styles/layout.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper col3">
  <div id="intro">
    <div class="fl_left">
      <h2>How it works ?</h2>
      <p>Offerers offer, Riders chhose and pay !</p> <br/>
      <p class="readmore"><a href="#">Find me a ride today &raquo;</a></p>
    </div>

    <div class="fl_right"><img src="images/demo/howitworks.jpg" alt="" /></div>
    <br class="clear" />
  </div>

</div>
<div class="wrapper col4">
  <div id="services">
    <ul>
      <li>
        <div class="fl_left"><img src="images/demo/1.jpg" alt="" /></div>
        <div class="fl_right">
          <h2>Offerers offer a ride </h2>
          <p>Various offerers can offer a ride. You can be a taxi driver, an office commuter or a person who is just free to offer a ride !</p> 
          <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
        </div>
      </li>
      <li>
        <div class="fl_left"><img src="images/demo/2.jpg" alt="" /></div>
        <div class="fl_right">
          <h2>Riders accept offer</h2>
          <p> As a passenger you can search for the offers and accept an offer</p><br/><br/><br/>
          <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
        </div>
      </li>
      <li class="last">
        <div class="fl_left"><img src="images/demo/3.jpg" alt="" /></div>
        <div class="fl_right">
          <h2>Pay using Paypal</h2>
          <p>Pay using paypal the estimated ride price ! Then enjoy your ride </p><br/><br/><br/>
          <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
        </div>
      </li>
    </ul>
    <br class="clear" /><br class="clear" /><br class="clear" /><br class="clear" /><br class="clear" />
  </div>
</div>
</asp:Content>

