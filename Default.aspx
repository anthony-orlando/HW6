<%@ Page Title="" Language="VB" MasterPageFile="~/RecipeMaster.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:hw6database_acorlando %>" SelectCommand="SELECT * FROM [hw6Database_acorlando]"></asp:SqlDataSource>

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="recipe_Id" DataSourceID="SqlDataSource4" style="margin-right: 91px" Width="889px">
            <Columns>
                <asp:BoundField DataField="recipe_Name" HeaderText="Recipe Name" SortExpression="recipe_Name" />
                <asp:BoundField DataField="submitted_By" HeaderText="Submitted By" SortExpression="submitted_By" />
                <asp:HyperLinkField DataNavigateUrlFields="recipe_Id" DataNavigateUrlFormatString="Details.aspx?recipe_id={0}" Text="Select" />
            </Columns>
        </asp:GridView>
</asp:Content>

