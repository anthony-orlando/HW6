<%@ Page Title="" Language="VB" MasterPageFile="~/RecipeMaster.master" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lbl_yourEmail" runat="server" Text="Your Email Address:"></asp:Label>
    <br />
    <asp:TextBox ID="tb_yourEmail" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lbl_message" runat="server" Text="Your Message:"></asp:Label>
    <br />
    <asp:TextBox ID="tb_yourMessage" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btn_send" runat="server" BackColor="#00CC00" ForeColor="White" Text="Send Message" />
    <asp:Label ID="lbl_confirmSent" runat="server"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

