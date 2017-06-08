<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DBGridView.aspx.cs" Inherits="Pet_Shop.DBGridView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section class="main">
    <section class="content">
    <!-- insert main content here -->
      Select a Customer from the dropdown list to view/update previous orders:
      <br />
      <asp:SqlDataSource ID="SqlDataSource1" runat="server"
         ConnectionString="<%$ ConnectionStrings:PetsCS %>"
         SelectCommand="SELECT [CustomerID], CONCAT(LastName, ', ', FirstName) AS Name FROM [Customers]"></asp:SqlDataSource>
      <asp:dropdownlist ID="CustomerDDList" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CustomerID"></asp:dropdownlist>
      <br /><br /><br />
      Click the word "Edit" next to a line to make changes to an order.
      <br /><br />
      <asp:SqlDataSource ID="SqlDataSource2" runat="server"
         ConnectionString="<%$ ConnectionStrings:PetsCS %>"
         SelectCommand="SELECT ProductOrderID, ProductOrders.OrderID, ProductID, QuantityOrdered, PriceCharged, TotalCost 
          FROM ProductOrders JOIN Orders ON ProductOrders.OrderID = Orders.OrderID WHERE Orders.CustomerID = @customer">
        <SelectParameters>
          <asp:ControlParameter ControlID="CustomerDDList" Name="customer" PropertyName="SelectedValue" />
        </SelectParameters>
      </asp:SqlDataSource>
      <asp:gridview ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" DataKeyNames="ProductOrderID" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
          <asp:BoundField DataField="ProductOrderID" HeaderText="ProdOrdID" ReadOnly="True" SortExpression="ProductOrderID" />
          <asp:BoundField DataField="OrderID" HeaderText="OrderID" SortExpression="OrderID" />
          <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
          <asp:BoundField DataField="QuantityOrdered" HeaderText="#Ordered" SortExpression="QuantityOrdered" />
          <asp:BoundField DataField="PriceCharged" HeaderText="Price" SortExpression="PriceCharged" />
          <asp:BoundField DataField="TotalCost" HeaderText="TotalCost" SortExpression="TotalCost" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
      </asp:gridview>
    </ section>
  </ section>
</asp:Content>
