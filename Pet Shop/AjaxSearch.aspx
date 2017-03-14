<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AjaxSearch.aspx.cs" Inherits="Pet_Shop.AjaxSearch" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<section class="main">
    <section class="content">
      <!-- insert main content here -->
			<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
			<asp:Label ID="Label1" runat="server" Text="Label">Enter a characters name: </asp:Label>
			<asp:TextBox ID="txtPets" runat="server"></asp:TextBox>
			<ajax:AutoCompleteExtender runat="server" 
				ID="autoComplete1" 
				TargetControlID="txtPets"
				ServiceMethod="GetCompletionList"
				MinimumPrefixLength="2" 
				CompletionInterval="1000"
				CompletionSetCount="20">						 
			</ajax:AutoCompleteExtender>
		</section>
	</section>
</asp:Content>
