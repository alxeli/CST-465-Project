﻿<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CST_465_Project.Customers.Login" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="mpHead" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="cHeader" runat="server">
    <h1>Login</h1>
</asp:Content>
<%--<asp:Content ID="Content3" ContentPlaceHolderID="cNav" runat="server">
</asp:Content>--%>
<asp:Content ID="Content4" ContentPlaceHolderID="cContent" runat="server">
    <asp:Login ID="uxLogin" MembershipProvider="SqlMembership" CreateUserText="Register" CreateUserUrl="Register.aspx" runat="server"/>
</asp:Content>
<%--<asp:Content ID="Content5" ContentPlaceHolderID="cFooter" runat="server">
</asp:Content>--%>
