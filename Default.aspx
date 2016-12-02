﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content ID="HeadContent" ContentPlaceHolderID="HeaderContent" runat="server">


</asp:Content>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  <div id="bulletLooper" data-looper="go" class="looper slide">
    <div class="looper-inner">
        <div class="item">
            <img src="Images/Products/BackPacks/BP_1_A.png" width="600" height="400" alt="" style=" margin: auto;">
        </div>
        <div class="item">
            <img src="Images/Products/Couches/couch_1_A.jpg" alt=""  style="margin: auto; position:relative; height:20%; width:20%;">
        </div>
        <div class="item">
            <img src="Images/Products/Tv/tv_1_A.jpg" width="600" height="400" alt="" style="margin: auto;"/>
        </div>
    </div>
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
                <a class="btn btn-default" href="Product.aspx">Learn more &raquo;</a>
            </p>
        </div>
    </div>

    
 
</asp:Content>
