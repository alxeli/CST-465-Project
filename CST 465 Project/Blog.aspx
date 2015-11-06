<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="CST_465_Project.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mpHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cHeader" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cNav" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cContent" runat="server">
    <asp:LoginView ID="uxLoginView" runat="server">
        <AnonymousTemplate>
            <asp:Label ID="lblAnonMsg" Text="You must be signed in to post a blog entry" runat="server" />
        </AnonymousTemplate>
        <LoggedInTemplate>
            <asp:Label ID="lblTitle" AssociatedControlID="uxTitleBox" Text="Title: " CssClass="right_label" runat="server" />
            <asp:TextBox ID="uxTitleBox" runat="server" />
            <br />
            <asp:Label ID="lblBody" AssociatedControlID="uxBodyBox" Text="Body: " CssClass="right_label" runat="server" />
            <br />
            <asp:TextBox ID="uxBodyBox" TextMode="MultiLine" CssClass="blog_textbox" runat="server" />
        </LoggedInTemplate>
    </asp:LoginView>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cFooter" runat="server">
</asp:Content>
