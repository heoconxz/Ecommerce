<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site.Master" CodeFile="Catagories.aspx.cs" Inherits="Catagories" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


   
    <div class="row">
        <div class="col-md-4">
            <h2>BackPacks</h2>
            <asp:HyperLink ID="Link1" runat="server" NavigateUrl="~/ProductList.aspx" onClick="Link_1">
                <img src="Picture/b11.jpg" alt="BackPack" style="position:relative; width:100%" > 
            </asp:HyperLink>
             
        </div>
        <div class="col-md-4">
            <h2>Couches</h2>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ProductList.aspx"  onClick="Link_2" >
                <img src="Images/Products/Couches/c_1_a.jpg" alt="Couch" style="position:relative; width:100%">
            </asp:HyperLink>
            
        </div>
        <div class="col-md-4">
           <h2>TVs</h2>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ProductList.aspx"  onClick="Link_3" >
                <img src="Images/Products/Tv/t_1_a.jpg" alt="TV" style="position:relative; width:100%">
                </asp:HyperLink>
        </div>
    </div>


</asp:Content>