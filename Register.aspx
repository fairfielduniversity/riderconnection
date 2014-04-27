<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="styles/layout.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="wrapper col5">
  <div id="container">
    <div id="content">
      <h1>User Registration</h1>
    
      <div id="respond">
         
          <p>
              <asp:TextBox ID="txtFname" runat="server" ></asp:TextBox>
            <label><small>First Name (required)</small></label> 
          </p>
          <p>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RidersConnectionConnectionString %>" SelectCommand="SELECT * FROM [StateName]"></asp:SqlDataSource>
          </p>
          <p>
              <asp:TextBox ID="txtMname" runat="server" ></asp:TextBox>
            <label><small>Middle Name (required)</small></label>
          </p>
            <p> <asp:TextBox ID="txtLname" runat="server" ></asp:TextBox>
            <label><small>Last Name (required)</small></label></p>
          <p>
             <asp:TextBox ID="txtEmail" runat="server" ></asp:TextBox>
            <label><small>E-Mail (required)</small></label>
          </p>
          <p>
               <asp:TextBox ID="txtPassword" runat="server" ></asp:TextBox>
            <label><small>Password</small></label>
          </p>
            
           <p>
             <asp:TextBox ID="txtquestion" runat="server" ></asp:TextBox>
            <label><small>Security Question</small></label>
          </p>
        
           <p>
             <asp:TextBox ID="txtAnswer" runat="server" ></asp:TextBox>
            <label><small>Security Answer</small></label>
          </p>
            <p>
             <asp:TextBox ID="txtPhonenumber" runat="server" ></asp:TextBox>
            <label><small>Phone Number(required)</small></label>
          </p>
            <p>
            <label><small>
              <asp:DropDownList ID="ddlState" runat="server" DataSourceID="SqlDataSource1" DataTextField="State" DataValueField="State" Height="27px" Width="140px" ></asp:DropDownList>&nbsp;State (required)</small></label>
          </p>
            <p>
             <asp:TextBox ID="txtCity" runat="server" ></asp:TextBox>
            <label><small>City (required)</small></label>
          </p>
            <p>
             <asp:TextBox ID="txtStreetaddress1" runat="server" ></asp:TextBox>
            <label><small>Street Address1 (required)</small></label> 
          </p>
          <p>
              <asp:TextBox ID="txtStreetaddress2" runat="server" ></asp:TextBox>
            <label><small>Street Address2 (required)</small></label>&nbsp;
          </p>
            <p>
             <asp:TextBox ID="txtZipcode" runat="server" ></asp:TextBox>
            <label><small>Zip-Code (required)</small></label>
          </p>
            <p>
                <label for="Usertype"><small>User-Type (required)</small></label>
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Passenger</asp:ListItem>
                <asp:ListItem>Offerer</asp:ListItem>
                <asp:ListItem>Admin</asp:ListItem>
                </asp:CheckBoxList>
            </p>
         
          <p>
              <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" OnClick="btnsubmit_Click" />
            &nbsp;
            <asp:Button ID="btnReset" runat="server" Text="RESET"/>
          </p>
      </div>
    </div>
   
    <div class="clear"></div>
  </div>
</div>
</asp:Content>

