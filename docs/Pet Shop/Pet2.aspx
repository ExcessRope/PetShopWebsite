<%@ Page Title="Rabbits and Fish" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pet2.aspx.cs" Inherits="Pet_Shop.Pet2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section class="main">
    <section class="content">
      <!-- insert main content here -->
      <h2>Rabbits</h2>
      <img src="images/rabbit.jpg" alt="RabbitPic" height="150" />
      <br />
      <label>The image above can be found via <a href="http://www.northrup.org/photos/rabbit/">http://www.northrup.org/photos/rabbit/</a> </label>
      <article>This is a paragraph about rabbits. Honestly, I don't know much about rabbits.
        I know my In-Laws had some in a hutch in their backyard. They had babies. Sadly, a 
        snake got in their cage and ate all of them. The end.
        <br /><br />
        <iframe width="560" height="315" src="https://www.youtube.com/embed/Tpq0n3Pk5ts" frameborder="0" allowfullscreen></iframe>
        <br />
        <label>You can find the video above at <a href="https://www.youtube.com/watch?v=Tpq0n3Pk5ts">https://www.youtube.com/watch?v=Tpq0n3Pk5ts</a></label>
        <br />

      </article>
      <h2>Fish</h2>
      <img src="images/fish.jpg" alt="FishPic" height="150"/>
      <br />
      <label>The image above can be found via <a href="http://insidetailgating.com/blog/2015/11/13/fish-tacos/">http://insidetailgating.com/blog/2015/11/13/fish-tacos/</a> </label>
      <article>So, fish are okay. At least, the ones most people have as pets. Check out some
        of the ones in the video below though. There is some crazy stuff out there. Way more 
        teeth than needed, I'd say. Sheesh.
        <br /><br />
        <iframe width="560" height="315" src="https://www.youtube.com/embed/jBEaHLDc-ow" frameborder="0" allowfullscreen></iframe>
        <br />
        <label>You can find the video above at <a href="https://www.youtube.com/watch?v=jBEaHLDc-ow">https://www.youtube.com/watch?v=jBEaHLDc-ow</a></label>
        <br />
      </article>
      <br /><br /><br />
    </section>
  </section>
</asp:Content>
