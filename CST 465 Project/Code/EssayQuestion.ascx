﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EssayQuestion.ascx.cs" Inherits="CST_465_Project.Code.EssayQuestion" %>

<asp:Label ID="lblQuestion" Text="Default Essay Question" runat="server" />
<br />
<asp:TextBox ID="uxAnswer" runat="server" />
<br />
<br />
<asp:RequiredFieldValidator ID="vAnswer" ControlToValidate="uxAnswer" runat="server" />