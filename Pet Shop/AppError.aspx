﻿<%@ Page Title="AppError" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Oops.aspx.cs" Inherits="Pet_Shop.Oops" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="main">
        <!-- insert main content here -->
        <b>Custom Default Error page!</b>
        <br>
        You have been redirected here from the <customErrors> section of the 
        Web.config file.
        <a href="Home.aspx">Click here to return Home!</a>
    </section >
</asp:Content>
