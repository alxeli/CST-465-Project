<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewTreaters.aspx.cs" Inherits="CST_465_Project.ViewTreaters" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <!--Data Source-->
        <asp:SqlDataSource ID="dbSource1" 
            ConnectionString="<%$ ConnectionStrings:DB_CST465 %>" 
            SelectCommandType="Text"
            SelectCommand="SELECT Name, ProductName, Costume FROM Treaters JOIN Candy ON Treaters.FavoriteCandyID=Candy.ID JOIN Costumes ON Treaters.CostumeID = Costumes.ID" runat="server" />
        <asp:Repeater ID="uxRepeater" DataSourceID="dbSource1" runat="server">
            <ItemTemplate>
                <%# Eval("Name") %> - <%# Eval("ProductName") %> - <%# Eval("Costume") %>
                <br />
            </ItemTemplate>
        </asp:Repeater>
    </div>
    </form>
</body>
</html>
