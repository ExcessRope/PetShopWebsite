<%@ Page Title="Cats and Dogs" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pet1.aspx.cs" Inherits="Pet_Shop.Pet1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section class="main">
    <section class="content">
      <!-- insert main content here -->
      <h2>Cats</h2>
      <img src="images/cat.jpg" alt="CatPic" height="150" />
      <br />
      <label>The image above can be found via <a href="https://www.petfinder.com/cats">https://www.petfinder.com/cats</a> </label>
      <article>This is a paragraph about cats. Personally, I'm not a fan, but to each their own.
        I'm not really sure what to write here, but I am filling in some text as a placeholder.
        At least cats are relatively independent. You need only feed them and clean their litterbox.
        <br /><br />
        <iframe width="560" height="315" src="https://www.youtube.com/embed/O1KW3ZkLtuo" frameborder="0" allowfullscreen></iframe>
        <br />
        <label>You can find the video above at <a href="https://www.youtube.com/watch?v=O1KW3ZkLtuo">https://www.youtube.com/watch?v=O1KW3ZkLtuo</a></label>
        <br />

      </article>
      <h2>Dogs</h2>
      <img src="images/dog.jpg" alt="DogPic" height="150"/>
      <br />
      <label>The image above can be found via <a href="http://dogtime.com/dog-breeds/entlebucher-mountain-dog#/slide/1">http://dogtime.com/dog-breeds/entlebucher-mountain-dog#/slide/1</a> </label>
      <article>Supposedly "Man's Best Friend". Yeah, sure, until they eat your favorite shoes. 
        Or ruin your carpet from tracking mud in, and making your house their personal toilet. 
        They're fun to look at and pet, but not worth the time and effort if you ask me.
        <br /><br />
        <iframe width="560" height="315" src="https://www.youtube.com/embed/29iVnf5ja5c" frameborder="0" allowfullscreen></iframe>
        <br />
        <label>You can find the video above at <a href="https://www.youtube.com/watch?v=29iVnf5ja5c">https://www.youtube.com/watch?v=29iVnf5ja5c</a></label>
        <br />
      </article>
      <br /><br /><br />
    </section>
  </section>
</asp:Content>
