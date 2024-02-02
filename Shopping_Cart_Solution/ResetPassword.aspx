<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ResetPassword.aspx.cs" Inherits="ResetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <body>
        <div class="modalcontainer">

            <p style="font-family: 'Playfair Display', serif; font-size: 20px; text-align: center;">Reset your password</p>
            <asp:label ID="lblErrorMsg" runat="server" Text=""></asp:label><br />
            <asp:PlaceHolder ID="PlaceHolder1" runat="server">
                <asp:TextBox ID="txt_RegPassword" CssClass="inputtxt" PlaceHolder="Password" runat="server" TextMode="Password"></asp:TextBox>
                <asp:TextBox ID="txt_ConfirmPW" CssClass="inputtxt" PlaceHolder="Confirm Password" runat="server" TextMode="Password"></asp:TextBox>
                <%--<asp:CompareValidator
                    ID="CompareValidatorPW"
                    runat="server"
                    ErrorMessage="Passwords do not match."
                    ControlToValidate="txt_ConfirmPW"
                    ControlToCompare="txt_RegPassword"
                    Operator="Equal" Type="String"
                    ForeColor="Red">
                </asp:CompareValidator>--%>
                <asp:Button ID="btnRegister" class="btnsignin" runat="server" Text="Reset Password" OnClick="resetpwdBtn_Click" />
            </asp:PlaceHolder>
<%--            <asp:PlaceHolder ID="PlaceHolder2" runat="server">
                <asp:Label ID="label2" runat="server" Text="Link is expired"></asp:Label><br />
            </asp:PlaceHolder>--%>
        </div><br />
    </body>
</asp:Content>

