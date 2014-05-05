 <%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="styles/layout.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper col3">
  <div id="intro">
    <div class="fl_left">
      <h2>Find your Ride today</h2>
      <p>Offerers offer your ride , and Riders enjoy the ride !</p>
        
        <table style="border: thin solid #FFFFFF; width: 100%;"  >
            <tr>
                <td style="width: 90px">From</td>
                <td>
              <asp:TextBox ID="txtFromZipCode" runat="server" Width="255px"></asp:TextBox>
            
                </td>
            </tr>
            <tr>
                <td style="width: 90px">To</td>
                <td>
              <asp:TextBox ID="txtToZipCode" runat="server" Width="256px" Height="17px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 90px">Passengers</td>
                <td>
           <asp:TextBox ID="txtCount" runat="server" Width="94px"></asp:TextBox>
            
            
                </td>
            </tr>
            <tr>
                <td style="width: 90px">Date</td>
                <td>
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
              </asp:DropDownList><asp:DropDownList ID="expiryYear" runat="server" style="margin-top: 0px">
                  <asp:ListItem>2014</asp:ListItem>
                  <asp:ListItem>2015</asp:ListItem>
                  <asp:ListItem>2016</asp:ListItem>
                  <asp:ListItem>2017</asp:ListItem>
                  <asp:ListItem>2018</asp:ListItem>
              </asp:DropDownList>
              
                </td>
            </tr>
        </table>
       
        
          <p>
            
              <asp:Button ID="btnReset" runat="server" Text="RESET" OnClick="btnReset_Click" /> <br/>
          </p>
       
      <p class="readmore">
          <asp:Button ID="btnFindMyRides" runat="server" Text="FIND ME MATCH" Width="143px" PostBackUrl="~/SearchResult.aspx" /></p> <br/>
    </div>
     <div class="fl_right"><img alt="" src="images/demo/Trip-Planner.png" style="width: 380px; height: 390px" /></div>
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

