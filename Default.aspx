<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>




<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

 
    <!-- <link rel="stylesheet" type="text/css" href="Default.css">
 <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src="jquery-ui-1.12.1/jcarousel/dist/jquery.jcarousel.js"></script> -->

    <div class="jumbotron">
        <ul>
            <li>This</li>
            <li>That</li>
            <li>These</li>
        </ul>

    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

    
   <%-- <script type="text/javascript">
        $(function () {
            $('.jcarousel').jcarousel({
                list: '.jcarousel-list'
            });
        });--%>
<%--</script>--%>
</asp:Content>
