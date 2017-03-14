<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JQuerySearch.aspx.cs" Inherits="Pet_Shop.JQuerySearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<section class="main">
    <section class="content">
      <!-- insert main content here -->
			<script src="//code.jquery.com/jquery-1.10.2.js"></script>
			<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
			<script>
				$(function () {
					var availableTags = ["Bugs Bunny", "Daffy Duck", "Porky Pig", "Elmer Fudd", "Tweety", "Sylvester",
						"Road Runner", "Wile E. Coyote", "Tazmanian Devil", "Yosemite Sam", "Pepe Le Pew",
						"Marvin the Martian", "Foghorn Leghorn", "Speedy Gonzales", "Bosko", "Buddy", "Egghead",
						"Sniffles", "Cecil Turtle", "Mac 'n Tosh", "The Three Bears", "Henery Hawk", "Beaky Buzzard",
						"Witch Hazel", "Gossamer", "Cool Cat", "Merlin the Magic Mouse", "Michigan J. Frog", "Pete Puma",
						"Playboy Penguin", "Rocky and Mugsy", "The Crusher", "Hubie and Bertie", "Claude Cat",
						"Marc Antony", "Pussyfoot", "Claude Hopper"];	
					$("#tags").autocomplete({
						source: availableTags
					});
				});
			</script>
			<div class="ui-widget">
				<label for="tags">Type a Characters name: </label>
				<input id="tags"/>
			</div>
		</section>
	</section>
</asp:Content>
