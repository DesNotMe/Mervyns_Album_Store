<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewReleases.aspx.cs" Inherits="NewReleases"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="assets/css/BestSeller.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <body>
        <br />
        <div class="pagetitle">The Best Sellers</div>
        <br />

        <div class="sidecontainer">
    <div style="width: auto; height: auto; float: right">
        <a style="font-family: 'JetBrains Mono', sans-serif;">CUSTOMER FAVOURITES</a>
        <a href="#" style="font-family: 'JetBrains Mono', sans-serif; color: #48C9B0; font-size: 13px">Christmas' Special</a>
        <a href="#" style="font-family: 'JetBrains Mono', sans-serif; color: #48C9B0; font-size: 13px">Mervyn's Top 100</a>
        <a href="#" style="font-family: 'JetBrains Mono', sans-serif; color: #48C9B0; font-size: 13px">New Releases</a>
        <a href="#" style="font-family: 'JetBrains Mono', sans-serif; color: #48C9B0; font-size: 13px">Coming Soon</a>
        <a href="#" style="font-family: 'JetBrains Mono', sans-serif; color: #48C9B0; font-size: 13px">Mervyn's Bestsellers</a>
        <a href="#" style="font-family: 'JetBrains Mono', sans-serif; color: #48C9B0; font-size: 13px">SB Top Reviews</a>
        <a href="#" style="font-family: 'JetBrains Mono', sans-serif; color: #48C9B0; font-size: 13px">Teen's Favourite</a>
        <a style="font-family: 'JetBrains Mono', sans-serif;"></a>
        <a style="font-family: 'JetBrains Mono', sans-serif;">BEST VALUE</a>
        <a href="#" style="font-family: 'JetBrains Mono', sans-serif; color: #48C9B0; font-size: 13px">Classical Week: Buy 2, Get 1 FREE</a>
        <a href="#" style="font-family: 'JetBrains Mono', sans-serif; color: #48C9B0; font-size: 13px">Summer Hits Deals</a>
        <a href="#" style="font-family: 'JetBrains Mono', sans-serif; color: #48C9B0; font-size: 13px">Mervyn's Pop: $30 Each</a>
        <a href="#" style="font-family: 'JetBrains Mono', sans-serif; color: #48C9B0; font-size: 13px">New Releases 15% Off</a>
        <a href="#" style="font-family: 'JetBrains Mono', sans-serif; color: #48C9B0; font-size: 13px">Pop Special: Spend $50, Get Extra $10 Off</a>
        <a style="font-family: 'JetBrains Mono', sans-serif;"></a>
        <a style="font-family: 'JetBrains Mono', sans-serif;">CATEGORIES</a>
        <a href="#" style="font-family: 'JetBrains Mono', sans-serif; color: #48C9B0; font-size: 13px">Pop</a>
        <a href="#" style="font-family: 'JetBrains Mono', sans-serif; color: #48C9B0; font-size: 13px">Hip Hop</a>
        <a href="#" style="font-family: 'JetBrains Mono', sans-serif; color: #48C9B0; font-size: 13px">Classical</a>
        <a href="#" style="font-family: 'JetBrains Mono', sans-serif; color: #48C9B0; font-size: 13px">Mandopop</a>
        <a href="#" style="font-family: 'JetBrains Mono', sans-serif; color: #48C9B0; font-size: 13px">Disney</a>
        <a href="#" style="font-family: 'JetBrains Mono', sans-serif; color: #48C9B0; font-size: 13px">Jazz</a>
        <a href="#" style="font-family: 'JetBrains Mono', sans-serif; color: #48C9B0; font-size: 13px">R&B</a>
        <a href="#" style="font-family: 'JetBrains Mono', sans-serif; color: #48C9B0; font-size: 13px">Kpop</a>
        <a href="#" style="font-family: 'JetBrains Mono', sans-serif; color: #48C9B0; font-size: 13px">Metal</a>
        <a href="#" style="font-family: 'JetBrains Mono', sans-serif; color: #48C9B0; font-size: 13px">See All Categories</a>
    </div>
</div>

        <div class="bookcontainer">
            <div class="containertitle">
                NEW RELEASES 💥
            </div>
            <div class="bookshelf">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div style="width: 146px;">
                            <asp:ImageButton PostBackUrl='<%# ResolveClientUrl("ProductDetails.aspx?ProdID=" + Eval("AS_ID"))%>' ID="imgBooks" CssClass="bookimage" ImageUrl='<%#Eval("AS_Image") %>' runat="server" />
                            <asp:Label CssClass="booktitle" ID="lblTitle" runat="server" Text='<%#Eval("AS_Title")%>'></asp:Label>
                            <br />
                            <asp:Label CssClass="bookauthor" ID="lblAuthor" runat="server" Text='<%#Eval("AS_Artist") %>' Style="color: #48C9B0; font-size: small"></asp:Label>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>           
            
        </div>
    </body>
</asp:Content>

