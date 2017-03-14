<%@ Page Title="NoAccess" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Oops.aspx.cs" Inherits="Pet_Shop.Oops" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="main">
        <b>You do not have permission to access this page!</b>
        <br>
        You have been redirected here from the <customErrors> section of the 
        Web.config file.
        <a href="Home.aspx">Click here to return Home!</a>
    </section> 
</asp:Content>
