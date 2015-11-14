<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="CST_465_Project.Results" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="mpHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cHeader" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cNav" runat="server">
</asp:Content>--%>
<asp:Content ID="Content4" ContentPlaceHolderID="cContent" runat="server">
    <asp:Repeater ID="uxRepeater" runat="server">
        <ItemTemplate>
            <b><%# Eval("QuestionText") %></b>
            <br /> 
            <%# Eval("Answer") %>
            <br />
            <br />
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
<%--<asp:Content ID="Content5" ContentPlaceHolderID="cFooter" runat="server">
</asp:Content>--%>
