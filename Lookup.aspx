<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lookup.aspx.cs" Inherits="Lookup" MasterPageFile="~/Site.master" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
    <script src="js/locations.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="search-wrapper">
        <div class="form-group">
            <label for="location-start">From:</label>
            <input class="form-control" type="text" id="location-start" placeholder="your location" />
        </div>
        <div class="form-group">
            <label for="location-end">To:</label>
            <input class="form-control" type="text" id="location-end" placeholder="destination" />
        </div>
        <div class="form-group">
            <label for="passengers">Passengers:</label>
            <input class="form-control" id="passengers" type="text" placeholder="how many people?" />
        </div>
        <br />
        <button type="button" id="get-a-ride" class="btn btn-success">Get a ride</button>
        <div id="search-results"></div>
    </div>
</asp:Content>
