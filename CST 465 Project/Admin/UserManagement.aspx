<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="CST_465_Project.Admin.UserManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mpHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cHeader" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cNav" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cContent" runat="server">
    <asp:Label ID="lblRoles" AssociatedControlID="uxRoles" Text="Roles: " CssClass="right_label" runat="server" />
    <asp:ListBox ID="uxRoles" runat="server" />
    <br />

    <asp:Label ID="lblRoleName" AssociatedControlID="uxRoles" Text="Role Name: " CssClass="right_label" runat="server" />
    <asp:TextBox ID="uxRoleNameBox" runat="server" />
    <br />

    <asp:Button ID="uxAddRole" runat="server" Text="Add Role" OnClick="uxAddRole_Click" />
    <br />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cFooter" runat="server">
</asp:Content>
