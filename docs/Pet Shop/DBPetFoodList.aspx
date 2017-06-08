<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DBPetFoodList.aspx.cs" Inherits="Pet_Shop.DBPetFoodList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section class="main">
        <section class="content">
        <!-- insert main content here -->            
          <asp:RadioButtonList ID="RDLPetFood" runat="server">
          </asp:RadioButtonList>            
        </ section>
    </ section>
</asp:Content>
