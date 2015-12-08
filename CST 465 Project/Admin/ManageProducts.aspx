<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="ManageProducts.aspx.cs" Inherits="CST_465_Project.Admin.ManagerProducts" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="mpHead" runat="server">
</asp:Content>--%>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="cLogo" runat="server">
</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="cHeader" runat="server">
    <h1>Manage Products</h1>
</asp:Content>
<%--<asp:Content ID="Content4" ContentPlaceHolderID="cNav" runat="server">
</asp:Content>--%>
<asp:Content ID="Content5" ContentPlaceHolderID="cContent" runat="server">

    <asp:SqlDataSource ID="dsProductManagement" 
        ConnectionString="<%$ ConnectionStrings:DB_CST465 %>" 
        InsertCommandType="StoredProcedure"
        InsertCommand="Product_InsertUpdate" 
        UpdateCommandType="StoredProcedure"
        UpdateCommand="Product_InsertUpdate" 
        SelectCommandType="StoredProcedure"
        SelectCommand="Product_GetList" runat="server" />

    <asp:FormView DataSourceID="dsProductManagement" DefaultMode="Insert" runat="server">
        <InsertItemTemplate runat="server">
            <asp:Label ID="lblName" AssociatedControlID="uxName" Text="Name: " CssClass="right_label" runat="server" />
            <asp:TextBox ID="uxName" text='<%# Bind("Name") %>' runat="server" />
            <br />
            <asp:Label ID="lblDescription" AssociatedControlID="uxDescription" Text="Description: " CssClass="top_right_label" runat="server" />
            <asp:TextBox ID="uxDescription" text='<%# Bind("Description") %>' TextMode="MultiLine"  CssClass="description_textbox" runat="server" />
            <br />
            <asp:Label ID="lblPrice" AssociatedControlID="uxPrice" Text="Price: " CssClass="right_label" runat="server" />
            <asp:TextBox ID="uxPrice" text='<%# Bind("Price") %>' runat="server" />
            <br />
            <asp:Label ID="lblFeatured" AssociatedControlID="uxFeatured" Text="Featured: " CssClass="right_label" runat="server" />
            <asp:CheckBox ID="uxFeatured" Checked='<%# Bind("Featured") %>' runat="server" />
            <br />
            <asp:Button ID="uxSubmit" Text="Submit" CommandName="Insert" runat="server" />
            <br />
            <br />
        </InsertItemTemplate>
    </asp:FormView>

    <div class="product_view">
        <asp:GridView ID="uxProducts" AutoGenerateColumns="false"
            DataSourceID="dsProductManagement" DataKeyNames="ID" AllowSorting="true" AllowPaging="true" PageSize="8" Width="100%" runat="server">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ItemStyle-Width="2%"  />
                <asp:BoundField DataField="Name" SortExpression="Name" HeaderText="Name" ItemStyle-Width="10%"  />
                <asp:BoundField DataField="Description" SortExpression="Description" HeaderText="Description" ItemStyle-Width="70%" />
                <asp:BoundField DataField="Price" DataFormatString="{0:c}" SortExpression="Price" HeaderText="Price" ItemStyle-Width="5%"  />
                <asp:BoundField DataField="Featured" SortExpression="Featured" HeaderText="Featured" ItemStyle-Width="5%"  />
                <asp:CommandField ShowEditButton="True" ItemStyle-Width="3%"></asp:CommandField>
            </Columns>
        </asp:GridView>
    </div>
    <br />

</asp:Content>
<%--<asp:Content ID="Content6" ContentPlaceHolderID="cFooter" runat="server">
</asp:Content>--%>
