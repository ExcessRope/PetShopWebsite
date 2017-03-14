<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DBCustomersDataSet.aspx.cs" Inherits="Pet_Shop.DBCustomersDataSet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section class="main">
    <section class="content">
    <!-- insert main content here -->
      <h2>These are the Customers on record</h2>
      <asp:BulletedList ID="CustomerList" runat="server"></asp:BulletedList>
      <asp:Label ID="lblResults" runat="server" Text=""></asp:Label>
      <br /><br />
    </ section>
  </ section>
</asp:Content>
