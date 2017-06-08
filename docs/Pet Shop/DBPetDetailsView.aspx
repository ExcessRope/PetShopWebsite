﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DBPetDetailsView.aspx.cs" Inherits="Pet_Shop.DBPetDetailsView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section class="main">
    <section class="content">
    <!-- insert main content here -->
      The table below shows the pet accessories in our database:
      <br /><br />
      <asp:SqlDataSource ID="SqlDataSource1" runat="server"
         ConnectionString="<%$ ConnectionStrings:PetsCS %>"
         SelectCommand="SELECT Description FROM Products WHERE CategoryID='4'"></asp:SqlDataSource>
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" 
        DataKeyNames="Description" DataSourceID="SqlDataSource1" EnablePersistedSelection="True" SelectedIndex="0">
        <Columns>
          <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Columns>
      </asp:GridView>
      <br /><br />
      Select an accessory above to see details and make changes.
      <br /><br />
      <asp:SqlDataSource ID="SqlDataSource2" runat="server"
         ConnectionString="<%$ ConnectionStrings:PetsCS %>"
         SelectCommand="SELECT * FROM [Products] WHERE ([Description] = @Description)">
        <SelectParameters>
          <asp:ControlParameter ControlID="GridView1" Name="Description" PropertyName="SelectedValue" />
        </SelectParameters>
      </asp:SqlDataSource>
      <asp:DetailsView ID="PetDetailsView" runat="server" Height="50px" Width="125px" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateInsertButton="True" AutoGenerateRows="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource2">
        <Fields>
          <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
          <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
          <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
          <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
          <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
          <asp:BoundField DataField="NumInStock" HeaderText="NumInStock" SortExpression="NumInStock" />
          <asp:BoundField DataField="SalePrice" HeaderText="SalePrice" SortExpression="SalePrice" />
          <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" SortExpression="Manufacturer" />
          <asp:BoundField DataField="PicName" HeaderText="PicName" SortExpression="PicName" />
          <asp:CheckBoxField DataField="SaleFlag" HeaderText="SaleFlag" SortExpression="SaleFlag" />
        </Fields>
      </asp:DetailsView>
      <br /><br /><br />
    </section>
  </section>
</asp:Content>
