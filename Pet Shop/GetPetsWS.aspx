<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GetPetsWS.aspx.cs" Inherits="Pet_Shop.GetPetsWS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section class="main">
    <section class="content">
    <!-- insert main content here -->
      <a href="Service%20References/GetPetList/">Service References/GetPetList/</a>
      <h2>These are the Pets on record.</h2>
      <asp:BulletedList ID="PetList" runat="server"></asp:BulletedList>
      <asp:Label ID="lblResults" runat="server" Text=""></asp:Label>
      <br /><br />
    </ section>
  </ section>
</asp:Content>
