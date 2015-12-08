<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="CST_465_Project.Products" %>

<%@ Register Src="~/Code/FeaturedProducts.ascx" TagPrefix="uc1" TagName="FeaturedProducts" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="mpHead" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="cHeader" runat="server">
    <h1>Products</h1>
</asp:Content>
<%--<asp:Content ID="Content3" ContentPlaceHolderID="cNav" runat="server">
</asp:Content>--%>
<asp:Content ID="Content4" ContentPlaceHolderID="cContent" runat="server">

    <asp:SqlDataSource ID="dsProducts" 
        ConnectionString="<%$ ConnectionStrings:DB_CST465 %>" 
        SelectCommandType="StoredProcedure"
        SelectCommand="Product_GetList" runat="server" />

    <uc1:FeaturedProducts runat="server" id="FeaturedProducts" />

    <br />
    <h2>All Products</h2>

    <asp:Repeater ID="uxRepeater" DataSourceID="dsProducts" runat="server">
        <ItemTemplate>
            <article>
                <div class="product">
                    <h3><%# Eval("Name")%></h3>
                    <p><%# Eval("Description")%></p>
                    <span class="price"><%# Eval("Price", "{0:c}")%></span>
                </div>
            </article>
        </ItemTemplate>
    </asp:Repeater>
    <br />
</asp:Content>
<%--<asp:Content ID="Content5" ContentPlaceHolderID="cFooter" runat="server">
</asp:Content>--%>
