<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewCart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Carttext" runat="server"></asp:Label>
    <asp:Button ID="pay" OnClick="Payment_Click" runat="server" text="Checkout" CssClass="btn"/>
    pk_live_51MO9p1F5vgkf6dtygGe9PTRzg6pwhONDTwnE3ec28nDMrlV9Lc4A6jqIQhopMjvfEdbpfpMIsMhcWB6DqPrHwKKP00pCXl1III
    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
</asp:Content>

