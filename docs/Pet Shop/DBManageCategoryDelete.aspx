<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DBManageCategoryDelete.aspx.cs" Inherits="Pet_Shop.DBManageCategoryDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section class="main">
    <section class="content">
    <!-- insert main content here -->
      <h2>This page lets you delete a Category</h2>
      <h3>The current Categories are displayed below</h3>
      <asp:BulletedList ID="CategoryList" runat="server"></asp:BulletedList>
      <asp:Label ID="lblResults" runat="server" Text=""></asp:Label>
      <br /><br />
      Select a Category to delete:
      <br /><br />
      <asp:DropDownList ID="DDList" runat="server"></asp:DropDownList>
      <br /><br />      
      <asp:Button ID="DeleteButton" runat="server" OnClick="DeleteButton_Click" Text="Submit" />
      <br /><br />      
      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DBManageCategoryInsert.aspx">Click here to <strong>Insert a new Category</strong></asp:HyperLink>
      <br />
      <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DBManageCategoryUpdate.aspx">Click here to <strong>Update a Category</strong></asp:HyperLink>
      <br /><br />
    </ section>
  </ section>
</asp:Content>
