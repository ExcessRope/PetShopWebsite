<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Pet_Shop.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section class="main">
    <section class="content">
      <!-- insert main content here -->
      <h2>Our Store</h2>
      <img src="images/petstore.png" alt="StorePic" height="150"/>
      <br />
      <label>The image above can be found via <a href="http://newhanoverprinting.com/updates/pet-store-marketing/">http://newhanoverprinting.com/updates/pet-store-marketing/</a> </label>
      <br />
      <article>Our store is completely made up. So please do not try to find us. We have no animals
        here, but it's nice that you want a new pet. Still, there is a reason the picture of our
        store above is just a cartoon illustration. You have been warned.
        <br /><br />
      </article>
      <h2>Adoption</h2>
      <article>First off, are you really sure you even want another life to be responsible for?
        Have you given this much thought, or is this an impulse thing? Because as much as I don't
        think you should have pets if you want to remain sane, I honestly would rather you think 
        through this decision you're about to make. Either way, we don't have any animals available.
        (See above) Sorry for the convenience.
        <br /><br />
      </article>
      <br /><br /><br />          
      <asp:Label ID="Label1" runat="server" Text="Label">Other Pet Care Sites</asp:Label>
      <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" BackColor="#708090" ForeColor="white" > 
        <asp:ListItem Value="https://en.wikipedia.org/wiki/Pet_Emergency_Management">Pet Management</asp:ListItem>
        <asp:ListItem Value="https://www.care.com/pet-care">Pet Care</asp:ListItem>
        <asp:ListItem Value="http://www.pethealthnetwork.com/">Pet Health</asp:ListItem>
        <asp:ListItem Value="https://www.petfinder.com/dogs/dog-nutrition/banfield-pet-feeding-recommendations/">Pet Feeding</asp:ListItem>
      </asp:DropDownList>

    </section>
  </section>
</asp:Content>
