<%@ Page Title="" Language="C#" MasterPageFile="~/Afterlogin.master" AutoEventWireup="true" CodeFile="Search2.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="assets/css/Search.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <body>
        <br />
        <div class="pagetitle">Search Result</div>
        <br />

        <div>
            <asp:TextBox ID="txtSearch" Style="height: 0.1px; width: 0.1px; border: none" runat="server"></asp:TextBox>
        </div>

        <div class="sidecontainer">
            <div style="width: auto; height: auto; float: right">
                <a style="font-family: 'Oswald', sans-serif;">CUSTOMER FAVOURITES</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Summer Reading</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Winter's Special</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">SB's Top 100</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">New Releases</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Coming Soon</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Straight Time's Bestsellers</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">SB Podcast</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">SB Top Reviews</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Book Charts</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Teen's Favourite</a>
                <a style="font-family: 'Oswald', sans-serif;"></a>
                <a style="font-family: 'Oswald', sans-serif;">BEST VALUE</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Sci-Fi Week: Buy 2, Get 1 FREE</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Summer Reading Deals</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">SB Classics: $6 Each</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">SB Collectibles Edition</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">New Releases 15% Off</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Thriller Special: Spend $50, Get Extra $10 Off</a>
                <a style="font-family: 'Oswald', sans-serif;"></a>
                <a style="font-family: 'Oswald', sans-serif;">CATEGORIES</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Art, Architecture & Photography</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Bibles & Christianity</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Biography</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Business</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Cookbooks, Food & Wine</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Fiction</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Graphic Novels & Comics</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Diet, Health, Fitness</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">History</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Mystery & Crime</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Religion</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Romance</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Science Fiction & Fantasy</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Self-Help & Relationships</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Sports</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">See All Categories</a>
            </div>
        </div>

        <div class="bookcontainer">
            <asp:Label ID="lblnoresult" runat="server" Text="No results found." Font-Size="Larger" Visible="False"></asp:Label>
            <div class="bookshelf">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div style="width: 146px;">
                            <asp:ImageButton PostBackUrl='<%# ResolveClientUrl("ProductDetails2.aspx?ProdID=" + Eval("ID") ) %>' class="bookimage" ID="imgBooks" ImageUrl='<%#Eval("Image") %>' runat="server" />
                            <asp:Label class="booktitle" ID="lblTitle" runat="server" Text='<%#Eval("Title")%>'></asp:Label><br />
                            <asp:Label class="bookauthor" ID="lblAuthor" runat="server" Text='<%#Eval("Author") %>' Style="color: #48C9B0"></asp:Label>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </body>

</asp:Content>
