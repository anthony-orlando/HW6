<%@ Page Title="" Language="VB" MasterPageFile="~/RecipeMaster.master" AutoEventWireup="false" CodeFile="Details.aspx.vb" Inherits="Details2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hw6database_acorlando %>" DeleteCommand="DELETE FROM [hw6Database_acorlando] WHERE [recipe_Id] = @recipe_Id" InsertCommand="INSERT INTO [hw6Database_acorlando] ([recipe_Name], [submitted_By], [ingredient_1], [ingredient_2], [ingredient_3], [ingredient_4], [ingredient_5], [preparation], [notes]) VALUES (@recipe_Name, @submitted_By, @ingredient_1, @ingredient_2, @ingredient_3, @ingredient_4, @ingredient_5, @preparation, @notes)" SelectCommand="SELECT * FROM [hw6Database_acorlando] WHERE ([recipe_Id] = @recipe_Id)" UpdateCommand="UPDATE [hw6Database_acorlando] SET [recipe_Name] = @recipe_Name, [submitted_By] = @submitted_By, [ingredient_1] = @ingredient_1, [ingredient_2] = @ingredient_2, [ingredient_3] = @ingredient_3, [ingredient_4] = @ingredient_4, [ingredient_5] = @ingredient_5, [preparation] = @preparation, [notes] = @notes WHERE [recipe_Id] = @recipe_Id">
            <DeleteParameters>
                <asp:Parameter Name="recipe_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipe_Name" Type="String" />
                <asp:Parameter Name="submitted_By" Type="String" />
                <asp:Parameter Name="ingredient_1" Type="String" />
                <asp:Parameter Name="ingredient_2" Type="String" />
                <asp:Parameter Name="ingredient_3" Type="String" />
                <asp:Parameter Name="ingredient_4" Type="String" />
                <asp:Parameter Name="ingredient_5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="recipe_Id" QueryStringField="recipe_Id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipe_Name" Type="String" />
                <asp:Parameter Name="submitted_By" Type="String" />
                <asp:Parameter Name="ingredient_1" Type="String" />
                <asp:Parameter Name="ingredient_2" Type="String" />
                <asp:Parameter Name="ingredient_3" Type="String" />
                <asp:Parameter Name="ingredient_4" Type="String" />
                <asp:Parameter Name="ingredient_5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="recipe_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
   
       <span class="deleted"> <asp:Label ID="lbl_deletedRecipe" runat="server"></asp:Label></span>
    
   
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="recipe_Id" DataSourceID="SqlDataSource1" Height="300px" Width="538px" style="margin-left: 253px">
            <Fields>
                <asp:BoundField DataField="recipe_Name" HeaderText="recipe_Name" SortExpression="recipe_Name" ControlStyle-BackColor="#F08080" />
                <asp:BoundField DataField="submitted_By" HeaderText="submitted_By" SortExpression="submitted_By" />
                <asp:BoundField DataField="ingredient_1" HeaderText="ingredient_1" SortExpression="ingredient_1" />
                <asp:BoundField DataField="ingredient_2" HeaderText="ingredient_2" SortExpression="ingredient_2" />
                <asp:BoundField DataField="ingredient_3" HeaderText="ingredient_3" SortExpression="ingredient_3" />
                <asp:BoundField DataField="ingredient_4" HeaderText="ingredient_4" SortExpression="ingredient_4" />
                <asp:BoundField DataField="ingredient_5" HeaderText="ingredient_5" SortExpression="ingredient_5" />
                <asp:BoundField DataField="preparation" HeaderText="preparation" SortExpression="preparation" />
                <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
</asp:Content>

