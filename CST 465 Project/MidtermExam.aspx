﻿<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="MidtermExam.aspx.cs" Inherits="CST_465_Project.MidtermExam" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="mpHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cHeader" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cNav" runat="server">
</asp:Content>--%>
<asp:Content ID="Content4" ContentPlaceHolderID="cContent" runat="server">
    <asp:PlaceHolder ID="uxQuestions" runat="server" />
    <br />
    <asp:Button ID="uxSubmit" Text="Submit" runat="server" CausesValidation="false" OnClick="uxSubmit_Click" />
</asp:Content>
<%--<asp:Content ID="Content5" ContentPlaceHolderID="cFooter" runat="server">
</asp:Content>--%>
