<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

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
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Winter's Special</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">New Releases</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Coming Soon</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Mervyn's Bestsellers</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">SB Top Reviews</a>
                <a style="font-family: 'Oswald', sans-serif;"></a>
                <a style="font-family: 'Oswald', sans-serif;">BEST VALUE</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Black Metal Week: Buy 2, Get 1 FREE</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">New Releases 15% Off</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Taylor Swift Special: Spend $50, Get Extra $10 Off</a>
                <a style="font-family: 'Oswald', sans-serif;"></a>
                <a style="font-family: 'Oswald', sans-serif;">CATEGORIES</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Heavy Metal</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Classical</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Soul</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Rhythm & Blues</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Pop</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Jazz</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Funk</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">Disco</a>
                <a href="#" style="font-family: 'Oswald', sans-serif; color: #48C9B0; font-size: 12.5px">See All Categories</a>
            </div>
        </div>

        <div class="bookcontainer">
            <asp:Label ID="lblnoresult" runat="server" Text="No results found." Font-Size="Larger" Visible="False"></asp:Label>
            <div class="bookshelf">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div style="width: 146px;">
                            <asp:ImageButton PostBackUrl='<%# ResolveClientUrl("ProductDetails.aspx?ProdID=" + Eval("ID"))%>'
                                class="bookimage"
                                ID="imgBooks"
                                ImageUrl='<%#Eval("Image") %>'
                                runat="server" 
                                Width="170px"/>
                            <asp:Label class="booktitle"
                                ID="lblTitle"
                                runat="server"
                                Text='<%#Eval("Title")%>'>
                            </asp:Label>
                            <br />
                            <asp:Label class="bookauthor"
                                ID="lblAuthor"
                                runat="server"
                                Text='<%#Eval("Artist") %>'
                                Style="color: #48C9B0">
                            </asp:Label>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </body>
</asp:Content>
