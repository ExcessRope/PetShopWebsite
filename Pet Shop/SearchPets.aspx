<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchPets.aspx.cs" Inherits="Pet_Shop.SearchPets" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section class="main">
    <section class="content">
      <!-- insert main content here -->
      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
      <asp:Label ID="Label1" runat="server" Text="Label"><strong>Start typing a name in the input field below: </strong></asp:Label>
      <br /><br />
      <%--<asp:Label ID="Label2" runat="server" Text="Label">Pet Name: </asp:Label>--%>
      
      <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px"></asp:TextBox>
      <ajax:AutoCompleteExtender ID="TextBox1_AutoCompleteExtender" runat="server" 
        BehaviorID="TextBox1_AutoCompleteExtender" DelimiterCharacters=""
        MinimumPrefixLength="2"
        ServiceMethod="GetHint" 
        TargetControlID="TextBox1">
      </ajax:AutoCompleteExtender>
      
      <br />  <br />    
      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" Width="100px" />      
      <br /><br /><br />
    </section>
  </section>  
</asp:Content>
