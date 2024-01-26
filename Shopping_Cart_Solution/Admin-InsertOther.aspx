<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Admin-InsertOther.aspx.cs" Inherits="Admin_InsertOther" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

            <style>
            .insertcontainer {
                margin: 20px auto;
                padding: 20px;
                height: 100%;
                width: 50%;
                border: 0.5px solid;
            }

            .textboxes {
                width: 100% !important;
                height: 30px !important;
                border: 0.5px solid !important;
            }

            .labels {
                font-size: 12px;
                font-family: 'Poppins', sans-serif;
            }

            .btns {
                width: 46%;
                height: 30px;
                padding: 5px;
                border: 0.5px solid;
                background-color: yellow;
            }

            tr {
                border: none;
            }

            .pgdesc {
                text-align: center;
                font-size: 28px;
                font-family: 'Playfair Display', serif;
                color: black;
                margin-top: 30px;
            }

            .pgdesc2 {
                text-align: center;
                font-size: 12px;
                font-family: 'Poppins', sans-serif;
                color: black;
                margin-top: 5px;
            }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  
 

    <body>
        <div class="pgdesc">
            INSERT BOOK LISTING
        </div>
        <div class="pgdesc2">
            Hiphop Albums
        </div>
        <div class="insertcontainer">
            <table>
                <tr>
                    <td>
                        <asp:Label CssClass="labels" ID="lblID" runat="server" Text="Product ID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox Style="width: 20%; height: 30px; border: 0.5px solid" ID="txtThrillerID" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label CssClass="labels" ID="Label1" runat="server" Text="Product Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="textboxes" ID="txtThrillerName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label CssClass="labels" ID="Label2" runat="server" Text="Product Artist"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="textboxes" ID="txtThrillerAuthor" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label CssClass="labels" ID="Label3" runat="server" Text="Unit Price"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox Style="width: 30%; height: 30px; border: 0.5px solid" ID="txtThrillerPrice" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label CssClass="labels" ID="Label4" runat="server" Text="Product Genre"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="textboxes" ID="txtThrillerGenre" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label CssClass="labels" ID="Label5" runat="server" Text="Image"></asp:Label>
                    </td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label CssClass="labels" ID="Label6" runat="server" Text="Description"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox Style="width: 100%; height: 80px; border: 0.5px solid" ID="txtThrillerDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button CssClass="btns" ID="btnInsertItems" runat="server" Text="Insert" OnClick="btnInsertItems_Click" />
                        <asp:Button CssClass="btns" ID="btnBack" runat="server" Text="Back" BackColor="#66FFFF" OnClick="btnBack_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </body>
</asp:Content>