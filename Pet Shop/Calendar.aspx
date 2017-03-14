<%@ Page Title="Calendar" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="Pet_Shop.Calendar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section class="main">
    <section class="content">
      <!-- insert main content here -->
      <asp:Calendar ID="MyCalendar" runat="server" VisibleDate="2016-01-01" OnSelectionChanged="MyCalendar_SelectionChanged" SelectionMode="Day" Width="350px" />
      <br /><br /><br />
      <asp:Label ID="lblDates" runat="server"></asp:Label>
    </section>
  </section>
</asp:Content>
