<%@ Page Title="" Language="C#" MasterPageFile="~/Afterlogin.master" AutoEventWireup="true" CodeFile="ProductDetails2.aspx.cs" Inherits="ProductDetails" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="assets/css/ProductDetails.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <body>
        <div class="leftcontainer">
            <div class="imgcontainer">
                <asp:Image ID="imgProductDetails" runat="server" Style="width: 280px; height: 400px; padding: 12px 10px 1px" />
            </div>
        </div>

        <div class="rightcontainer">
            <div class="booktitle">
                <asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label>
            </div>

            <div class="bookauthor">
                by
                <asp:Label ID="lblAuthor" runat="server" Text="Label" Style="color: #48C9B0"></asp:Label>
            </div>

            <div style="height: 10px; font-size: 13px; padding-top: 6px; margin-bottom: 8px; margin-top: 5px; font-weight: bold">
                <asp:Label ID="lblGenre" runat="server" Text="Label"></asp:Label>
            </div>

            <div class="bookprice">
                <asp:Label ID="lblPrice" runat="server" Text="Label"></asp:Label>
            </div>

            <div class="booktype">
                <a class="active">Standard<br />
                    <asp:Label ID="lblPrice2" runat="server" Text="Label"></asp:Label></a>
            </div>

            <div class="bookshipping">
                ✔&nbsp Spend a Minimum of $30 to get Free Shipping
            </div>

            <div class="bookpurchase">
                <asp:Button ID="btnAddCart" runat="server" Text="ADD TO CART" class="cartbutton" />
            </div>

            <div class="footnote">
                Choose Expedited Shipping at checkout for guaranteed delivery within 
            </div>

            <div class="footnote" style="font-weight: bold">
                &nbsp 2-3 days
            </div>
        </div>

        <div class="bookdescription">
            <p style="text-align: center; font-family: 'Noticia Text', serif; font-weight: bold; font-size: 25px;">Overview</p>
            <asp:Label ID="lblDescription" runat="server" Text="Label"></asp:Label>
        </div>
    </body>

</asp:Content>

