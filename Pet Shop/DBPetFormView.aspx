<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DBPetFormView.aspx.cs" Inherits="Pet_Shop.DBPetFormView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <style type="text/css">
    .auto-style1 {
      width: 100%;
    }
    .auto-style2 {
      width: 225px;
    }
    .auto-style3 {
      text-decoration: underline;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section class="main">
    <section class="content">
    <!-- insert main content here -->            
      The table below shows the pet accessories in our database and allows you to make changes:
      <br /><br />
      <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:PetsCS %>"
        SelectCommand="SELECT * FROM Products WHERE CategoryID='4'">
      </asp:SqlDataSource>
      <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ProductID" DataSourceID="SqlDataSource2" Height="244px" Width="213px">
        <EditItemTemplate>
          ProductID:
          <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
          <br />
          CategoryID:
          <asp:TextBox ID="CategoryIDTextBox" runat="server" Text='<%# Bind("CategoryID") %>' />
          <br />
          Description:
          <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
          <br />
          Price:
          <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
          <br />
          Weight:
          <asp:TextBox ID="WeightTextBox" runat="server" Text='<%# Bind("Weight") %>' />
          <br />
          NumInStock:
          <asp:TextBox ID="NumInStockTextBox" runat="server" Text='<%# Bind("NumInStock") %>' />
          <br />
          SalePrice:
          <asp:TextBox ID="SalePriceTextBox" runat="server" Text='<%# Bind("SalePrice") %>' />
          <br />
          Manufacturer:
          <asp:TextBox ID="ManufacturerTextBox" runat="server" Text='<%# Bind("Manufacturer") %>' />
          <br />
          PicName:
          <asp:TextBox ID="PicNameTextBox" runat="server" Text='<%# Bind("PicName") %>' />
          <br />
          SaleFlag:
          <asp:CheckBox ID="SaleFlagCheckBox" runat="server" Checked='<%# Bind("SaleFlag") %>' />
          <br />
          <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
          &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
          CategoryID:
          <asp:TextBox ID="CategoryIDTextBox" runat="server" Text='<%# Bind("CategoryID") %>' />
          <br />
          Description:
          <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
          <br />
          Price:
          <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
          <br />
          Weight:
          <asp:TextBox ID="WeightTextBox" runat="server" Text='<%# Bind("Weight") %>' />
          <br />
          NumInStock:
          <asp:TextBox ID="NumInStockTextBox" runat="server" Text='<%# Bind("NumInStock") %>' />
          <br />
          SalePrice:
          <asp:TextBox ID="SalePriceTextBox" runat="server" Text='<%# Bind("SalePrice") %>' />
          <br />
          Manufacturer:
          <asp:TextBox ID="ManufacturerTextBox" runat="server" Text='<%# Bind("Manufacturer") %>' />
          <br />
          PicName:
          <asp:TextBox ID="PicNameTextBox" runat="server" Text='<%# Bind("PicName") %>' />
          <br />
          SaleFlag:
          <asp:CheckBox ID="SaleFlagCheckBox" runat="server" Checked='<%# Bind("SaleFlag") %>' />
          <br />
          <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
          &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
          <span class="auto-style3"><strong style="text-align: center">Pet Accessory Details</strong></span><br />&nbsp;<table class="auto-style1">
            <tr>
              <td style="text-align: right; font-weight: bold;">ProductID:</td>
              <td class="auto-style2">
                <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
              </td>
            </tr>
            <tr>
              <td style="text-align: right; font-weight: bold;">CategoryID:</td>
              <td class="auto-style2">
                <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Bind("CategoryID") %>' />
              </td>
            </tr>
            <tr>
              <td style="text-align: right; font-weight: bold;">Description: </td>
              <td class="auto-style2">
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
              </td>
            </tr>
            <tr>
              <td style="text-align: right; font-weight: bold;">Price: </td>
              <td class="auto-style2">
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
              </td>
            </tr>
            <tr>
              <td style="text-align: right; font-weight: bold;">Weight:</td>
              <td class="auto-style2">
                <asp:Label ID="WeightLabel" runat="server" Text='<%# Bind("Weight") %>' />
              </td>
            </tr>
            <tr>
              <td style="text-align: right; font-weight: bold;">NumInStock: </td>
              <td class="auto-style2">
                <asp:Label ID="NumInStockLabel" runat="server" Text='<%# Bind("NumInStock") %>' />
              </td>
            </tr>
            <tr>
              <td style="text-align: right; font-weight: bold;">SalePrice: </td>
              <td class="auto-style2">
                <asp:Label ID="SalePriceLabel" runat="server" Text='<%# Bind("SalePrice") %>' />
              </td>
            </tr>
            <tr>
              <td style="text-align: right; font-weight: bold;">Manufacturer:</td>
              <td class="auto-style2">
                <asp:Label ID="ManufacturerLabel" runat="server" Text='<%# Bind("Manufacturer") %>' />
              </td>
            </tr>
            <tr>
              <td style="text-align: right; font-weight: bold;">PicName: </td>
              <td class="auto-style2">
                <asp:Label ID="PicNameLabel" runat="server" Text='<%# Bind("PicName") %>' />
              </td>
            </tr>
            <tr>
              <td style="text-align: right; font-weight: bold;">SaleFlag:</td>
              <td class="auto-style2">
                <asp:CheckBox ID="SaleFlagCheckBox" runat="server" Checked='<%# Bind("SaleFlag") %>' Enabled="false" />
              </td>
            </tr>
          </table>
          <br />
          <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
          &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
          &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
      </asp:FormView>
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PetsCS %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [Products] ([CategoryID], [Description], [Price], [Weight], [NumInStock], [SalePrice], [Manufacturer], [PicName], [SaleFlag]) VALUES (@CategoryID, @Description, @Price, @Weight, @NumInStock, @SalePrice, @Manufacturer, @PicName, @SaleFlag)" SelectCommand="SELECT * FROM [Products] WHERE ([CategoryID] = @CategoryID)" UpdateCommand="UPDATE [Products] SET [CategoryID] = @CategoryID, [Description] = @Description, [Price] = @Price, [Weight] = @Weight, [NumInStock] = @NumInStock, [SalePrice] = @SalePrice, [Manufacturer] = @Manufacturer, [PicName] = @PicName, [SaleFlag] = @SaleFlag WHERE [ProductID] = @ProductID">
        <DeleteParameters>
          <asp:Parameter Name="ProductID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
          <asp:Parameter Name="CategoryID" Type="Int32" />
          <asp:Parameter Name="Description" Type="String" />
          <asp:Parameter Name="Price" Type="Decimal" />
          <asp:Parameter Name="Weight" Type="Decimal" />
          <asp:Parameter Name="NumInStock" Type="Decimal" />
          <asp:Parameter Name="SalePrice" Type="Decimal" />
          <asp:Parameter Name="Manufacturer" Type="String" />
          <asp:Parameter Name="PicName" Type="String" />
          <asp:Parameter Name="SaleFlag" Type="Boolean" />
        </InsertParameters>
        <SelectParameters>
          <asp:Parameter DefaultValue="4" Name="CategoryID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
          <asp:Parameter Name="CategoryID" Type="Int32" />
          <asp:Parameter Name="Description" Type="String" />
          <asp:Parameter Name="Price" Type="Decimal" />
          <asp:Parameter Name="Weight" Type="Decimal" />
          <asp:Parameter Name="NumInStock" Type="Decimal" />
          <asp:Parameter Name="SalePrice" Type="Decimal" />
          <asp:Parameter Name="Manufacturer" Type="String" />
          <asp:Parameter Name="PicName" Type="String" />
          <asp:Parameter Name="SaleFlag" Type="Boolean" />
          <asp:Parameter Name="ProductID" Type="Int32" />
        </UpdateParameters>
      </asp:SqlDataSource>
    </ section>
  </ section>
</asp:Content>
