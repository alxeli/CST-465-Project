<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MultipleChoiceQuestion.ascx.cs" Inherits="CST_465_Project.Code.MultipleChoiceQuestion" %>

<asp:Label ID="lblQuestions" AssociatedControlID="uxQuestions" Text="Default MultiChoice Question" QuestionText="" runat="server" />
<asp:RadioButtonList ID="uxQuestions" runat="server" />
<asp:RequiredFieldValidator ID="vQuestions" ControlToValidate="uxQuestions" runat="server" />
