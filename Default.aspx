<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:hw6database_acorlando %>" SelectCommand="SELECT * FROM [hw6Database_acorlando]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="recipe_Id" DataSourceID="SqlDataSource4" style="margin-right: 91px" Width="889px">
            <Columns>
                <asp:BoundField DataField="recipe_Name" HeaderText="Recipe Name" SortExpression="recipe_Name" />
                <asp:BoundField DataField="submitted_By" HeaderText="Submitted By" SortExpression="submitted_By" />
                <asp:BoundField DataField="ingredient_1" HeaderText="Ingredient #1" SortExpression="ingredient_1" />
                <asp:BoundField DataField="ingredient_2" HeaderText="Ingredient #2" SortExpression="ingredient_2" />
                <asp:BoundField DataField="ingredient_3" HeaderText="Ingredient #3" SortExpression="ingredient_3" />
                <asp:BoundField DataField="ingredient_4" HeaderText="Ingredient #4" SortExpression="ingredient_4" />
                <asp:BoundField DataField="ingredient_5" HeaderText="Ingredient #5" SortExpression="ingredient_5" />
                <asp:BoundField DataField="preparation" HeaderText="Preparation" SortExpression="preparation" />
                <asp:BoundField DataField="notes" HeaderText="Notes" SortExpression="notes" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
