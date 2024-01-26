<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="assets/css/index.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <body>
        <div class="slideshow-container">
            <div class="mySlides fade">
                <div class="numbertext">1 / 3</div>
                <img src="images/1.jpg" style="width: 100%">
            </div>

            <div class="mySlides fade">
                <div class="numbertext">2 / 3</div>
                <img src="images/2.jpg" style="width: 100%">
            </div>

            <div class="mySlides fade">
                <div class="numbertext">3 / 3</div>
                <img src="images/3.jpg" style="width: 100%">
            </div>
            <%-- Add the prev and next buttons for the suer to click -- %>
             <%-- when clicked it calls on plusSlides()--%>
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>

        <div class="collage">
            <div class="zone1"></div>
            <div class="zone2"></div>
            <div class="zone3"></div>
        </div>
        <br />
        <br />
        <div class="bookcontainer">
            <div class="zoneA">
                SUNNY's AUGUST TOP PICKS<br />
                <asp:Button ID="btnIndexBS" runat="server" Text="VIEW NOW" CssClass="bcbtn" />
            </div>
            <div class="zoneB"></div>
            <div class="zoneC"></div>
            <div class="zoneD"></div>
            <div class="zoneE"></div>
        </div>
        <br />
        <br />
        <div class="titletext">
            CHECK OUT OUR LATEST BLOCKBLUSTERS
        </div>
        <br />
        <div class="movieposter">
            <div class="poster1"></div>
            <div class="poster2"></div>
            <div class="poster3"></div>
        </div>
        <br />
        <div class="titletext">
            GIFTS FOR THE YOUNGER ONES
        </div>
        <br />
        <div class="toyposter">
            <div class="toy1"></div>
            <div class="toy2"></div>
            <div class="toy3"></div>
        </div>
        <br />
        <div class="titletext" style="margin-top: 10%">
            TOP NEW RELEASES
        </div>
        <br />
        <div class="bookcontainer2">
            <div class="zoneF"></div>
            <div class="zoneG"></div>
            <div class="zoneH"></div>
            <div class="zoneI"></div>
            <div class="zoneJ"></div>
            <div class="zoneK"></div>
            <div class="zoneL"></div>
            <div class="zoneM"></div>
            <div class="zoneN"></div>
            <div class="zoneO"></div>
        </div>
        <br />
        <br />
    </body>
    <script>
        var slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            if (n > slides.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = slides.length }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
        }
    </script>




</asp:Content>
