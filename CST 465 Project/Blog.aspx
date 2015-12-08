<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="CST_465_Project.Blog" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="mpHead" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="cHeader" runat="server">
    <h1>Blog</h1>
</asp:Content>
<%--<asp:Content ID="Content3" ContentPlaceHolderID="cNav" runat="server">
</asp:Content>--%>
<asp:Content ID="Content4" ContentPlaceHolderID="cContent" runat="server">

    <asp:SqlDataSource ID="dsBlog" 
    ConnectionString="<%$ ConnectionStrings:DB_CST465 %>" 
    InsertCommandType="StoredProcedure"
    InsertCommand="Blog_InsertUpdate" 
    SelectCommandType="Text"
    SelectCommand="SELECT Title, Content FROM Blog" runat="server" />

    <asp:LoginView ID="uxLoginView" runat="server">
        <AnonymousTemplate>
            <asp:Label ID="lblAnonMsg" Text="You must be signed in to post a blog entry" runat="server" />
        </AnonymousTemplate>
        <LoggedInTemplate>
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <asp:FormView DataSourceID="dsBlog" DefaultMode="Insert" runat="server">
                        <InsertItemTemplate runat="server">
                            <asp:Label ID="lblTitle" AssociatedControlID="uxTitleBox" Text="Title: " CssClass="right_label" runat="server" />
                            <asp:TextBox ID="uxTitleBox" text='<%# Bind("Title") %>' runat="server" />
                            <br />
                            <asp:Label ID="lblBody" AssociatedControlID="uxBodyBox" Text="Body: " CssClass="top_right_label" runat="server" />
                            <asp:TextBox ID="uxBodyBox" text='<%# Bind("Content") %>' TextMode="MultiLine" CssClass="blog_textbox" runat="server" />
                            <asp:Button ID="uxSubmit" Text="Submit" CommandName="Insert" runat="server" />
                            <br />
                            <br />
                        </InsertItemTemplate>
                    </asp:FormView>
                    <asp:Repeater ID="uxRepeater" DataSourceID="dsBlog" runat="server">
                        <ItemTemplate>
                            <article>
                                <h1><%# Eval("Title") %></h1>
                                <p><%# Eval("Content") %></p>
                            </article>
                        </ItemTemplate>
                    </asp:Repeater>
                    <br />
                </ContentTemplate>
            </asp:UpdatePanel>
        </LoggedInTemplate>
    </asp:LoginView>

</asp:Content>
<%--<asp:Content ID="Content5" ContentPlaceHolderID="cFooter" runat="server">
</asp:Content>--%>