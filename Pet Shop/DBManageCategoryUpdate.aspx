<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DBManageCategoryUpdate.aspx.cs" Inherits="Pet_Shop.DBManageCategoryUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section class="main">
    <section class="content">
    <!-- insert main content here -->
      <h2>This page lets you update a Category</h2>
      <h3>The current Categories are displayed below</h3>
      <asp:BulletedList ID="CategoryList" runat="server"></asp:BulletedList>
      <asp:Label ID="lblResults" runat="server" Text=""></asp:Label>
      <br /><br />
      Select a Category to update:
      <br /><br />
      <asp:DropDownList ID="DDList" runat="server"></asp:DropDownList>
      <br /><br />
      Enter new description here:
      <asp:TextBox ID="TextBox1" runat="server" placeholder="New Description"></asp:TextBox>
      <br /><br />
      <asp:Button ID="UpdateButton" runat="server" OnClick="UpdateButton_Click" Text="Submit" />
      <br /><br />      
      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DBManageCategoryInsert.aspx">Click here to <strong>Insert a new Category</strong></asp:HyperLink>
      <br />
      <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DBManageCategoryDelete.aspx">Click here to <strong>Delete a Category</strong></asp:HyperLink>
      <br /><br />
    </ section>
  </ section>
</asp:Content>
