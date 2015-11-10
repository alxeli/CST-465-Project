<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTreater.aspx.cs" Inherits="CST_465_Project.AddTreater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <!--DataSource-->
        <asp:SqlDataSource ID="dbSource1" 
            ConnectionString="<%$ ConnectionStrings:DB_CST465 %>" 
            SelectCommandType="Text"
            SelectCommand="Select * FROM Candy"
            runat="server"/>
        <asp:SqlDataSource ID="dbSource2" ConnectionString="<%$ ConnectionStrings:DB_CST465 %>" 
            SelectCommandType="Text"
            SelectCommand="Select * FROM Costumes"
            runat="server"/>
        <asp:SqlDataSource ID="dbSource3" 
            ConnectionString="<%$ ConnectionStrings:DB_CST465 %>" 
            InsertCommandType="Text" 
            InsertCommand="INSERT INTO Treaters(Name, FavoriteCandyID, CostumeID) VALUES (@Name, @FavoriteCandyID, @CostumeID)" runat="server"/>


        <asp:FormView ID="uxFormView1" DefaultMode="Insert" DataSourceID="dbSource3" runat="server">
            <InsertItemTemplate>
                <asp:Label ID="lblName" Text="Name: " runat ="server" />
                <asp:TextBox ID="uxName" 
                    Text='<%# Bind("Name") %>' runat="server" />
                <asp:DropDownList ID="uxCandylist" 
                    SelectedValue='<%# Bind("FavoriteCandyID") %>' 
                    DataSourceID="dbsource1" 
                    DataTextField="ProductName" 
                    DataValueField="Id" runat="server" />
                <asp:DropDownList ID="uxCostumelist" 
                    SelectedValue='<%# Bind("CostumeID") %>' 
                    DataSourceID="dbsource2" 
                    DataTextField="Costume" 
                    DataValueField="Id" runat="server" />
                <asp:Button ID="uxAddButton" 
                    Text="Add Treater" 
                    CommandName="Insert" runat="server" />
            </InsertItemTemplate>
        </asp:FormView>

    </div>
    </form>
</body>
</html>
