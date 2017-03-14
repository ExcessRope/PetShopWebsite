<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormatGridView.aspx.cs" Inherits="Pet_Shop.FormatGridView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section class="main">
    <section class="content">
    <!-- insert main content here -->
      This is all Customer information.
      <br /><br />
      <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:PetsCS %>"
        SelectCommand="SELECT CustomerID, CONCAT (LastName, ', ', FirstName) AS Name, 
          CONCAT (StreetAddress, ', ', City, ', ', State, ' ', Zip) AS Address, Login, Email, Phone, FirstOrderDate FROM [Customers]"></asp:SqlDataSource>
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" BorderColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" />
        <Columns>
          <asp:BoundField DataField="CustomerID" HeaderText="ID" ReadOnly="True" SortExpression="CustomerID" />
          <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ReadOnly="True" />
          <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" ReadOnly="True" />
          <asp:BoundField DataField="Login" HeaderText="Login" SortExpression="Login" />
          <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
          <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
          <asp:BoundField DataField="FirstOrderDate" HeaderText="First Order" SortExpression="FirstOrderDate" />
        </Columns>
        <EditRowStyle BackColor="#999999" HorizontalAlign="Center" VerticalAlign="Middle" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#808080" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" VerticalAlign="Middle" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" BorderColor="Black" BorderStyle="Solid" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
      </asp:GridView>
      <br /><br /><br />
    </section>
  </section>
</asp:Content>
