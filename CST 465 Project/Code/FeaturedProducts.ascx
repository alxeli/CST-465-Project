<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FeaturedProducts.ascx.cs" Inherits="CST_465_Project.Code.FeaturedProducts" %>

<asp:SqlDataSource ID="dsFeatureProducts" 
        ConnectionString="<%$ ConnectionStrings:DB_CST465 %>" 
        SelectCommandType="StoredProcedure"
        SelectCommand="Product_GetFeatured" runat="server" />

<h2>Featured Products</h2>

<asp:Repeater ID="uxRepeater" DataSourceID="dsFeatureProducts" runat="server">
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