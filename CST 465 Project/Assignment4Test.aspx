<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment4Test.aspx.cs" Inherits="CST_465_Project.Assignment4Test" %>

<%@ Register Src="~/Code/EssayQuestion.ascx" TagPrefix="uc1" TagName="EssayQuestion" %>
<%@ Register Src="~/Code/MultipleChoiceQuestion.ascx" TagPrefix="uc1" TagName="MultipleChoiceQuestion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assignment 4 Test</title>
</head>
<body>
    <h1>Assignment 4 test</h1>
    <br />

    <form id="form1" runat="server">
        <div>            
            <uc1:EssayQuestion ID="uxEssay" QuestionText="What is your favorite food?" runat="server" />
            <br />

            <uc1:MultipleChoiceQuestion ID="uxMultipleChoice" QuestionText="What year will your graduate?" runat="server">
                <Items>
                    <asp:ListItem Text="2015" Value="2015" />
                    <asp:ListItem Text="2016" Value="2016" />
                    <asp:ListItem Text="2017" Value="2017" />
                    <asp:ListItem Text="2020" Value="2020" />
                </Items>
            </uc1:MultipleChoiceQuestion>
            <br />

            <A4:ShortTextQuestion ID="uxShortText" runat="server" />
            <br />

            <A4:TrueFalseQuestion ID="uxTrueFalse" runat="server" />
            <br />
            
            <asp:Button ID="uxSubmit" Text="Submit" runat="server" OnClick="uxSubmit_Click" />
            <br />

            <asp:Literal ID="uxResultLiteral" runat="server" />
        </div>
    </form>
</body>
</html>
