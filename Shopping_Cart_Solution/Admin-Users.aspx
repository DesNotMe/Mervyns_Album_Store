<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Admin-Users.aspx.cs" Inherits="Admin_Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
     <style>
            .GVcontainer {
                height: auto;
                width: 100%;
                border: 0.6px solid;
                margin-top: 40px;
                margin-bottom: 40px;
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <body>
        <div class="GVcontainer">
            <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="False" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnRowDeleting="gvUsers_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                    <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:App_Data %>" SelectCommand="SELECT [Email], [Last_Name], [First_Name], [Id] FROM [REGISTRATION]"></asp:SqlDataSource>
        </div>
    </body>

</asp:Content>




<%--            <asp:GridView ID="gvUsers" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnRowDeleting="gvUsers_RowDeleting">
<Columns>
<asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
<asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
<asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
<asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
<asp:CommandField ShowDeleteButton="True" />
</Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:App_Data %>" SelectCommand="SELECT [Email], [Last_Name], [First_Name], [Id] FROM [REGISTRATION]"></asp:SqlDataSource>--%>