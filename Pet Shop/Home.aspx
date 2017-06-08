<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Pet_Shop.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <!-- Nathaniel Johnson, 5/10/2016, Home.aspx -->
  <title>Home</title>
	<meta charset="utf-8" />
  <meta name="keywords"content="Web pages, HTML 5, CSS 3" />
  <meta name="description"content="Pet page #1" />
  <link href="pet.css" type="text/css"rel="stylesheet" />
  <link rel="icon" href="images/pet.png" />
  <script type="text/javascript" src="pet.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <!-- insert top navigation here -->
      <header>
          <img class="logo" src="images/logo.jpg" alt="Logo" />
          <nav class="topMenu">
            <ul>
                <li><a href="Home.aspx">Home</a></li>
                <li><a href="Pet1.html">Cats and Dogs</a></li>
                <li><a href="Pet2.html">Rabbits and Fish</a></li>
                <li><a href="https://www.petfinder.com/dogs/dog-nutrition/banfield-pet-feeding-recommendations/" target="_blank">Feeding</a></li>
                <li><a href="https://en.wikipedia.org/wiki/Pet_Emergency_Management" target="_blank">Pet Emergency Management</a></li>
            </ul>
          </nav>
          <h1>Home</h1>
      </header>
        <table>
        <tr>
            <td style="vertical-align: top;">
            <p> Navigation Menu</p>
            <asp:TreeView ID="TreeView1" runat="server"
                DataSourceID="SiteMapDataSource1" ImageSet="Arrows" NodeIndent="0">
                <LevelStyles>
                <asp:TreeNodeStyle Font-Size="12pt" Font-Bold="true" ForeColor="DarkBlue" />
                <asp:TreeNodeStyle Font-Size="10pt" Font-Bold="true" ForeColor="Black" />
                <asp:TreeNodeStyle Font-Size="10pt" ForeColor="DarkBlue" />
                </LevelStyles>
            </asp:TreeView>
            <br />
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/App_Data/PetAds.xml" 
                Target="_blank"/>
            <p>Users online: <asp:Label ID="UserCount" runat="server"></asp:Label></p>
            </td>          
            <td style="vertical-align: top;">
            
            
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
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
              <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" BackColor="#042841" ForeColor="White" > 
                <asp:ListItem Value="https://en.wikipedia.org/wiki/Pet_Emergency_Management">Pet Management</asp:ListItem>
                <asp:ListItem Value="https://www.care.com/pet-care">Pet Care</asp:ListItem>
                <asp:ListItem Value="http://www.pethealthnetwork.com/">Pet Health</asp:ListItem>
                <asp:ListItem Value="https://www.petfinder.com/dogs/dog-nutrition/banfield-pet-feeding-recommendations/">Pet Feeding</asp:ListItem>
              </asp:DropDownList>
        </section>
      </section>
        </td>
        </tr>
        </table>
      <footer>
        <!-- insert footer content here -->
        Created by Nathaniel Johnson (not a real website)
        <br />
        Reach me at <a href="mailto::1086375@park.edu?Subject=Pet%20Mail" target="_top">1086375@park.edu</a>
      </footer>
    </div>
    </form>
</body>
</html>
