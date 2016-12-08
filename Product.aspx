<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site.Master" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeaderContent" runat="server">
 <!-- CSS -->
      <style type = "text/css">
         #spinner-1 input {
             width: 100px}

         .grey_text{
             color:#535353;
         }
      </style>

</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="row">
        <div class="col-md-6">
            <h2  class="blue_text" style="position:relative; float:left; ">Product Name</h2>
            <h2  class="blue_text" style="position:relative; float:right; "> Price: $$</h2>    

            <div id="bulletLooper" data-looper="go" class="looper slide" style="width:100%">
    <div class="looper-inner">
        <div class="item">
            <img src="Images/Products/Couches/c_1_a.jpg" alt="couch 1" style="position:relative; width:100%;">
        </div>
        <div class="item">
            <img src="Images/Products/Couches/c_2_a.jpg" alt=""  style=" position:relative; width:100%;">
        </div>
        <div class="item">
            <img src="Images/Products/Tv/t_1_b.jpg"  style=" position:relative; width:100%;"/>
        </div>
    </div>
                <nav>
        <a class="looper-control" data-looper="prev" href="#bulletLooper">
            <i class="icon-chevron-left"></i>
        </a>
        <a class="looper-control right" data-looper="next" href="#bulletLooper">
            <i class="icon-chevron-right"></i>
        </a>
        <ul class="looper-nav">
            <li><a href="#bulletLooper" data-looper="to" data-args="1">&bull;</a></li>
            <li><a href="#bulletLooper" data-looper="to" data-args="2">&bull;</a></li>
            <li><a href="#bulletLooper" data-looper="to" data-args="3">&bull;</a></li>
        </ul>
    </nav>

      </div> 
        </div>

        <div class="col-md-4">
            <h2 class="blue_text">Product Details:</h2>
            <p class ="grey_text">
               Description here Description here Description here Description here Description here 
                Description here Description here Description here Description here Description here 
            </p>
        </div>
        <div class="col-md-4" style=" ">

                    <p  class="blue_text" style="float:left;"">Number of items: </p>
                
               <div style="float:right;"">
                   <input type = "text" id = "spinner-1" value = "0" "/>
               </div>
                       
            <p>
                <button type="button" style="position:relative; width:100%;">Buy Product >>></button>
           </p>
        </div>
    </div>

    

<!-- Javascript -->
      <script>
          $(function () {
              $("#spinner-1").spinner({
                  min: 0,
                  max: 10
              });
            
          });
      </script>
</asp:Content>
