<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/StyleSheet.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/MasterPage.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <body>
        <div class="modalcontainer">
        <p style="font-family: 'Playfair Display', serif; font-size: 20px;">Forgot Password</p>
        <asp:Label ID="lblErorrMsg" runat="server" Text=""></asp:Label>
        <asp:TextBox ID="txt_Email" CssClass="inputtxt" PlaceHolder="Email Address" runat="server" TextMode="Email"></asp:TextBox>
        <asp:Button ID="forgotPwdBtn" CssClass="btnsignin" runat="server" Text="Submit" OnClick="forgotPwdBtn_Click" /><br />
        </div>
    </body>
</asp:Content>

