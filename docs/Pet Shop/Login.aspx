<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Pet_Shop.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="main">
    <section class="content">
      <!-- insert main content here -->      
      <div runat="server" id="fields">
        <p>Username: <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Username cannot be blank."
            ControlToValidate="TextBox1" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"                 
            ErrorMessage="Username may only contain upper case, lower case and numbers. (4-12 chars long)"
            ControlToValidate="TextBox1"
            ValidationExpression="[a-zA-Z0-9]{4,12}$" SetFocusOnError="True" Display="Dynamic"></asp:RegularExpressionValidator>
        </p>

        <p>Password: <asp:TextBox ID="TextBox2" runat="server" type="password" style="margin-left: 0px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
            ErrorMessage="Password must not be blank."
            ControlToValidate="TextBox2" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ErrorMessage="Invalid password. May contain only upper and lower case, 
                @ * and # special characters. Length between 8 and 15 characters."
            ControlToValidate="TextBox2"
            ValidationExpression="[a-zA-Z0-9@*#]{8,15}$" Display="Dynamic"></asp:RegularExpressionValidator>
        </p>
        <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Submit" />
        <asp:Label ID="lastvisit" runat="server"></asp:Label>
        <asp:Label ID="cookierole" runat="server"></asp:Label>
      </div>
    </section>
  </section>
</asp:Content>
