<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PetsMoving.aspx.cs" Inherits="Pet_Shop.PetsMoving" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section class="main">
    <section class="content">
      <!-- insert main content here -->
      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
			<asp:image runat="server" id="BugsBunnyGif" imageurl="~/images/BugsBunny.gif" height="200"></asp:image>
			<!-- found at: http://giphy.com/gifs/cartoon-rabbit-looney-tunes-P2xf5nPyu5WP6 -->
			<asp:image runat="server" id="DaffyDuckGif" imageurl="~/images/DaffyDuck.gif" height="200"></asp:image>
			<!-- found at: http://giphy.com/gifs/crazy-looney-tunes-daffy-duck-WdKkcN8hLzvOM -->
			<asp:image runat="server" id="PorkyPigGif" imageurl="~/images/PorkyPig.gif" height="200"></asp:image>
			<!-- found at: http://giphy.com/gifs/porky-pig-BstGxJOQNZRv2 -->
			<asp:image runat="server" id="TweetyGif" imageurl="~/images/Tweety.gif" height="200"></asp:image>
			<!-- found at: http://giphy.com/gifs/tweety-bird-NAVQDibk6Sesg -->         
			<br /><br />
			<asp:UpdatePanel ID="UpdatePanel1" runat="server">
				<ContentTemplate>
					<asp:Label ID="lblTime" runat="server" Font-Bold="True"></asp:Label> <br /> <br />
					<asp:Button ID="refreshTime" runat="server" Text="Refresh Time" onclick="cmdRefreshTime_Click" />
				</ContentTemplate>
			</asp:UpdatePanel>
      <br /><br />
			<asp:UpdatePanel ID="UpdatePanel2" runat="server">
				<ContentTemplate>
					<asp:Label runat="server" Font-Bold="True">Order posters here!</asp:Label><br />
					<asp:TextBox ID="PosterQuantity" runat="server" placeholder="Enter quantity"></asp:TextBox>
					<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
						ErrorMessage="Plesae enter a Number (0-9)" 
						ControlToValidate="PosterQuantity"
						ValidationExpression="^[0-9]*$" 
						Display="Dynamic">
						</asp:RegularExpressionValidator>
					<asp:Label ID="posterPrice" runat="server" Font-Bold="True">$12.99 each</asp:Label> <br /> <br />
					<asp:Button ID="submitOrder" runat="server" Text="Order My Poster" onclick="submitOrder_Click" />
					<asp:Label ID="posterTotal" runat="server" >Your Total: </asp:Label> <br /> <br />
				</ContentTemplate>
			</asp:UpdatePanel>
			<asp:UpdatePanel ID="UpdatePanel3" runat="server">
				<ContentTemplate>
					<asp:Label runat="server" Font-Bold="True">Order leashes here!</asp:Label><br />
					<asp:DropDownList ID="DropDownList1" runat="server">
						<asp:ListItem Selected="True">Red</asp:ListItem>
						<asp:ListItem>Blue</asp:ListItem>
						<asp:ListItem>Green</asp:ListItem>
						<asp:ListItem>Yellow</asp:ListItem>
						<asp:ListItem>Black</asp:ListItem>
						<asp:ListItem>Brown</asp:ListItem>
						<asp:ListItem>White</asp:ListItem>
						<asp:ListItem>Orange</asp:ListItem>
						<asp:ListItem>Purple</asp:ListItem>
						<asp:ListItem>Glow in the Dark</asp:ListItem>
						<asp:ListItem>Invisible</asp:ListItem>
					</asp:DropDownList>
					<asp:TextBox ID="LeashQuantity" runat="server" placeholder="Enter quantity"></asp:TextBox>
					<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
						ErrorMessage="Plesae enter a Number (0-9)" 
						ControlToValidate="LeashQuantity"
						ValidationExpression="^[0-9]*$" 
						Display="Dynamic">
						</asp:RegularExpressionValidator>					
					<asp:Label ID="Label1" runat="server" Font-Bold="True">$7.99 each</asp:Label> <br /> <br />
					<asp:Button ID="orderLeash" runat="server" Text="Buy My Leash" onclick="orderLeash_Click" />
					<asp:Label ID="leashTotal" runat="server" >Your Total: </asp:Label> <br /> <br />
				</ContentTemplate>
			</asp:UpdatePanel>
			<br />
    </section>
  </section>
</asp:Content>
