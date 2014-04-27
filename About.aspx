<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="styles/layout.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper col5">
  <div id="container">
    <div id="content">
       <h1>About us</h1>
       <p> This site is designed by Fairfield University Students of Asp.Net Online Group Students of Spring 2014.</p><br/><br/>
   <h2>Write A Comment</h2>
      <div id="respond">
        
          <p>
              <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <label><small>Name (required)</small></label>
          </p>
          <p>
              <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <label for="email"><small>Mail (required)</small></label>
          </p>
          <p>
            <textarea name="comment" id="comment" cols="100%" rows="10"></textarea>
            <label style="display:none;"><small>Comment (required)</small></label>
          </p>
          <p>
              <asp:Button ID="btnAboutusSubmit" runat="server" Text="SUBMIT" />
            &nbsp;
            <asp:Button ID="btnAboutusReset" runat="server" Text="RESET" />
          </p> <br/> <br/> <br/>
        
      </div>
    </div>

    <div class="clear"></div>
  </div>
</div>
</asp:Content>

