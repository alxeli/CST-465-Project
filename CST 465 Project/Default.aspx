<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CST_465_Project.Default1" %>
<asp:Content ID="Content4" ContentPlaceHolderID="cContent" runat="server">
    <div>
        <asp:Label ID="lblName" AssociatedControlID="uxName" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="uxName" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="lblUserType" AssociatedControlID="uxUserType" runat="server" Text="UserType"></asp:Label>
        <asp:DropDownList ID="uxUserType" AutoPostBack="true" runat="server">
            <asp:ListItem>Student</asp:ListItem>
            <asp:ListItem>Faculty/Staff</asp:ListItem>
        </asp:DropDownList>
        <br />

        <asp:Label ID="lblHobby" AssociatedControlID="uxHobby" runat="server" Text="Hobby"></asp:Label>
        <asp:TextBox ID="uxHobby" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="lblBand" AssociatedControlID="uxBand" runat="server" Text="Band"></asp:Label>
        <asp:TextBox ID="uxBand" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="lblBiography" AssociatedControlID="uxBiography" runat="server" Text="Biography"></asp:Label>
        <asp:TextBox ID="uxBiography" TextMode="MultiLine" runat="server"></asp:TextBox>
        <br />

        <asp:Table ID="uxCourses" runat="server">
            <asp:TableHeaderRow runat="server">
                <asp:TableHeaderCell>Course Prefix</asp:TableHeaderCell>
                <asp:TableHeaderCell>Course Number</asp:TableHeaderCell>
                <asp:TableHeaderCell>Course Description</asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow ID="uxCourseRow1" runat="server">
                <asp:TableCell><asp:TextBox ID="uxCoursePrefix" runat="server"></asp:TextBox></asp:TableCell> 
                <asp:TableCell><asp:TextBox ID="uxCourseNumber" runat="server"></asp:TextBox></asp:TableCell> 
                <asp:TableCell><asp:TextBox ID="uxCourseDescription" runat="server"></asp:TextBox></asp:TableCell> 
            </asp:TableRow>
        </asp:Table>
        <br />

        <asp:Label ID="lblSubmit" AssociatedControlID="uxSubmit" runat="server" Text="Save Profile"></asp:Label>
        <asp:Button ID="uxSubmit" OnClick="uxSubmit_Click" runat="server" Text="Submit" />
        <br />

        <asp:Literal ID="uxIsPostBack" runat="server"></asp:Literal>
        <br />
        <asp:Literal ID="uxFormOutput" runat="server"></asp:Literal>
        <br />
        <asp:Literal ID="uxEventOutput" runat="server"></asp:Literal>
        <br />
    </div>
</asp:Content>
