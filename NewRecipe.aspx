<%@ Page Title="" Language="VB" MasterPageFile="~/RecipeMaster.master" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="NewRecipe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hw6database_acorlando %>" DeleteCommand="DELETE FROM [hw6Database_acorlando] WHERE [recipe_Id] = @recipe_Id" InsertCommand="INSERT INTO [hw6Database_acorlando] ([recipe_Name], [submitted_By], [ingredient_1], [ingredient_2], [ingredient_3], [ingredient_4], [ingredient_5], [preparation], [notes]) VALUES (@recipe_Name, @submitted_By, @ingredient_1, @ingredient_2, @ingredient_3, @ingredient_4, @ingredient_5, @preparation, @notes)" SelectCommand="SELECT * FROM [hw6Database_acorlando]" UpdateCommand="UPDATE [hw6Database_acorlando] SET [recipe_Name] = @recipe_Name, [submitted_By] = @submitted_By, [ingredient_1] = @ingredient_1, [ingredient_2] = @ingredient_2, [ingredient_3] = @ingredient_3, [ingredient_4] = @ingredient_4, [ingredient_5] = @ingredient_5, [preparation] = @preparation, [notes] = @notes WHERE [recipe_Id] = @recipe_Id">
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
    
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipe_Id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <EditItemTemplate> 
            </EditItemTemplate>
            <InsertItemTemplate>
                <table style="margin-left:400px;">
                    <tr>
                        <td style="text-align:right;background-color:#f08080;">
                            Recipe Name:
                        </td >
                        <td style="text-align:left;">
                            <asp:TextBox ID="recipe_NameTextBox" runat="server" Text='<%# Bind("recipe_Name") %>' />
                        </td>
                         <td style="text-align:left;">
                             <asp:RequiredFieldValidator ID="rfv_recipeName" runat="server" ControlToValidate="recipe_NameTextBox" Display="Static" Visible="True" ErrorMessage="Please enter a Recipe Name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                            <tr>
                        <td style="text-align:right; background-color:#f08080;">
                            Submitted By:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="submitted_ByTextBox" runat="server" Text='<%# Bind("submitted_By") %>' />
                        </td>
                                <td style="text-align:left;">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="submitted_ByTextBox" Display="Static" Visible="True" ErrorMessage="Please enter a Submitted by Name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                            <tr>
                        <td style="text-align:right; background-color:#f08080;">
                            Ingredient 1:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="ingredient_1TextBox" runat="server" Text='<%# Bind("ingredient_1") %>' />
                        </td>
                          <td style="text-align:left;">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ingredient_1TextBox" Display="Static" Visible="True" ErrorMessage="Please enter an Ingredent 1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                            <tr>
                        <td style="text-align:right; background-color:#f08080;">
                             Ingredient 2:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="ingredient_2TextBox" runat="server" Text='<%# Bind("ingredient_2") %>' />
                        </td>
                    </tr>
                            <tr>
                        <td style="text-align:right; background-color:#f08080;">
                            
                            Ingredient 3:
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="ingredient_3TextBox" runat="server" Text='<%# Bind("ingredient_3") %>' />
                        </td>
                    </tr>
                            <tr>
                        <td style="text-align:right;background-color:#f08080;">
                            Ingredient 4:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="ingredient_4TextBox" runat="server" Text='<%# Bind("ingredient_4") %>' />
                        </td>
                    </tr>
                            <tr>
                        <td style="text-align:right; background-color:#f08080;">
                            Ingredient 5:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="ingredient_5TextBox" runat="server" Text='<%# Bind("ingredient_5") %>' />
                        </td>
                    </tr>
                            <tr>
                        <td style="text-align:right; background-color:#f08080;">
                             Preparation:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="preparationTextBox" runat="server" Text='<%# Bind("preparation") %>' />
                        </td>
                            <td style="text-align:left;">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="preparationTextBox" Display="Static" Visible="True" ErrorMessage="Please enter a preparation"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                            <tr>
                        <td style="text-align:right; background-color:#f08080;">
                            Notes:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
                        </td>
                    </tr>
                </tr>
                            <tr >
                       
                        <td style="text-align:right; ">
                            <asp:Button ID="Btn_save" runat="server" CausesValidation="True" CommandName="Insert" Text="Save" BackColor="#00CC00" ForeColor="White" />
                        </td>
                    </tr>
                </table>

            </InsertItemTemplate>
            <ItemTemplate>
                recipe_Id:
                <asp:Label ID="recipe_IdLabel" runat="server" Text='<%# Eval("recipe_Id") %>' />
                <br />
                recipe_Name:
                <asp:Label ID="recipe_NameLabel" runat="server" Text='<%# Bind("recipe_Name") %>' />
                <br />
                submitted_By:
                <asp:Label ID="submitted_ByLabel" runat="server" Text='<%# Bind("submitted_By") %>' />
                <br />
                ingredient_1:
                <asp:Label ID="ingredient_1Label" runat="server" Text='<%# Bind("ingredient_1") %>' />
                <br />
                ingredient_2:
                <asp:Label ID="ingredient_2Label" runat="server" Text='<%# Bind("ingredient_2") %>' />
                <br />
                ingredient_3:
                <asp:Label ID="ingredient_3Label" runat="server" Text='<%# Bind("ingredient_3") %>' />
                <br />
                ingredient_4:
                <asp:Label ID="ingredient_4Label" runat="server" Text='<%# Bind("ingredient_4") %>' />
                <br />
                ingredient_5:
                <asp:Label ID="ingredient_5Label" runat="server" Text='<%# Bind("ingredient_5") %>' />
                <br />
                preparation:
                <asp:Label ID="preparationLabel" runat="server" Text='<%# Bind("preparation") %>' />
                <br />
                notes:
                <asp:Label ID="notesLabel" runat="server" Text='<%# Bind("notes") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
     </asp:FormView>
&nbsp; 
</asp:Content>

