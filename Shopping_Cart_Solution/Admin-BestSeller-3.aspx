<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Admin-BestSeller-3.aspx.cs" Inherits="BestSeller" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- Include Toastr CSS -->
<link href="toastr.css" rel="stylesheet"/>
<!-- Include Toastr JS -->
<script src="toastr.js"></script>

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
                <span>HARDCOVER THRILLER - 40% OFF</span>
                <asp:Button 
                    ID="btnAddItem"
                    Style="font-size: 14px; padding: 8px; margin-bottom: 10px; margin-left: 10px; border: 0.5px solid" 
                    runat="server" 
                    Text="INSERT" OnClick="btnAddItem_Click" />
            </div>
            <div class="bookshelf">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div style="width: 146px;">
                            <asp:ImageButton ID="imgBooks" CssClass="bookimage" ImageUrl='<%#Eval("AS_Image") %>' runat="server" />
                            <asp:TextBox ID="txtImage" Text='<%#Eval("AS_Image")%>' runat="server" Visible="False"></asp:TextBox>
                            <br />

                            <asp:Label CssClass="booktitle" ID="lblTitle" runat="server" Text='<%#Eval("AS_Title")%>'></asp:Label>
                            <asp:TextBox ID="txtTitle" Text='<%#Eval("AS_Title")%>' runat="server" Visible="False"></asp:TextBox>
                            <br />

                            <asp:Label CssClass="bookauthor" ID="lblAuthor" runat="server" Text='<%#Eval("AS_Artist") %>' Style="color: #48C9B0; font-size:small;"></asp:Label>
                            <asp:TextBox ID="txtAuthor" Text='<%#Eval("AS_Artist") %>' runat="server" Visible="False"></asp:TextBox>
                            <br />

                            <asp:Label ID="lblBookId" runat="server" Text='<%# Eval("AS_ID") %>' Visible="False"></asp:Label>
                            <br />

                            <asp:LinkButton ID="lnkEdit" Text="Edit |" runat="server" OnClick="OnEdit" Font-Size="Small" />
                            <asp:LinkButton ID="lnkUpdate" Text="Update |" runat="server" Visible="false" OnClick="OnUpdate" Font-Size="Small" />
                            <asp:LinkButton ID="lnkCancel" Text="Cancel |" runat="server" Visible="false" OnClick="OnCancel" Font-Size="Small" />
                            <asp:LinkButton
                                ID="lnkDelete"
                                Text="Delete"
                                runat="server"
                                OnClick="OnDelete"
                                OnClientClick="return confirm('Are you sure you want to delete this?');"
                                Font-Size="Small" />
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </body>

</asp:Content>
