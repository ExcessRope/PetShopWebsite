<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DBPetDataList.aspx.cs" Inherits="Pet_Shop.DBPetDataList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section class="main">
    <section class="content">
    <!-- insert main content here -->
      The table below shows the pets currently in stock:
      <br /><br />
      <asp:SqlDataSource ID="SqlDataSource1" runat="server"
         ConnectionString="<%$ ConnectionStrings:PetsCS %>"
         SelectCommand="SELECT Description FROM Products WHERE CategoryID='1' AND NumInStock > '0'"></asp:SqlDataSource>
      <asp:datalist ID="PetDataList" runat="server" BorderColor="#336699" DataSourceID="SqlDataSource1" GridLines="Both" RepeatColumns="2">
        <ItemTemplate>
          <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
          <br /><br />
        </ItemTemplate>
      </asp:datalist>
      <br /><br /><br />
    </section>
  </section>
</asp:Content>
