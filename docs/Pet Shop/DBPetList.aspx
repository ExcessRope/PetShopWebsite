<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DBPetList.aspx.cs" Inherits="Pet_Shop.DBPetList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section class="main">
    <section class="content">
    <!-- insert main content here -->            
      <asp:DropDownList ID="DDLPetList" runat="server"></asp:DropDownList>          
      <asp:Label ID="lblResults" runat="server" Text=""></asp:Label>
    </ section>
  </ section>
</asp:Content>
