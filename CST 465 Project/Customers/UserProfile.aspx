<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/App_Master/BaseTemplate.Master" CodeBehind="UserProfile.aspx.cs" Inherits="CST_465_Project.UserProfile" %>

<asp:Content ID="UserProfileHead" ContentPlaceHolderID="mpHead" runat="server">
    <title>User Profile</title>
    <script type="text/javascript">
        function validateFile(sender, args) {
            var allowedExtensions = ['jpg', 'gif', 'png'];
            var fileExtension = args.Value.split(/(\.)/g).pop();
            args.IsValid = false;
            for (var i = 0; i < allowedExtensions.length; i++) {
                if (fileExtension == allowedExtensions[i]) {
                    args.IsValid = true;
                }
            }
        }
    </script>
</asp:Content>

<asp:Content ID="UserProfileHeader" ContentPlaceHolderID="cHeader" runat="server">
    <h1>User Profile</h1>
</asp:Content>

<asp:Content ID="UserProfileContent" ContentPlaceHolderID="cContent" runat="server">
    <asp:MultiView ID="uxMultiView" ActiveViewIndex="0" runat="server">
        <asp:View ID="uxFirstView" runat="server">
            <asp:Label ID="lblFirstName" CssClass="right_label" AssociatedControlID="uxFirstName" Text="First Name: " runat="server" />
            <asp:TextBox ID="uxFirstName" CssClass="name_textbox" runat="server" />
            <asp:RequiredFieldValidator ID="vFirstName" ControlToValidate="uxFirstName" ErrorMessage="First Name Required" Text="*" runat="server" />
            <br />

            <asp:Label ID="lblLastName" CssClass="right_label" AssociatedControlID="uxLastName" Text="Last Name: " runat="server" />
            <asp:TextBox ID="uxLastName" CssClass="name_textbox" runat="server" />
            <asp:RequiredFieldValidator ID="vLastName" ControlToValidate="uxLastName" ErrorMessage="Last Name Required" Text="*" runat="server" />
            <br />

            <asp:Label ID="lblAge" CssClass="right_label" AssociatedControlID="uxAge" Text="Age: " runat="server" />
            <asp:TextBox ID="uxAge" CssClass="age_textbox" runat="server" />
            <asp:RangeValidator ID="vAge" ControlToValidate="uxAge" MinimumValue="0" MaximumValue="200" Type="Integer" ErrorMessage="Age must be between 0 and 200" Text="*" runat="server"/>
            <br />

            <asp:Label ID="lblPhoneNumber" CssClass="right_label" AssociatedControlID="uxPhoneNumber" Text="Phone Number: " runat="server" />
            <asp:TextBox ID="uxPhoneNumber" CssClass="phone_textbox" runat="server" />
            <asp:RequiredFieldValidator ID="vPhoneNumber" ControlToValidate="uxPhoneNumber" ErrorMessage="Phone Number Required" Text="*" runat="server" />
            <br />

            <asp:Label ID="lblEmailAddress" CssClass="right_label" AssociatedControlID="uxEmailAddress" Text="Email Address: " runat="server" />
            <asp:TextBox ID="uxEmailAddress" CssClass="email_textbox" runat="server" />
            <asp:RequiredFieldValidator ID="vEmailAddress" ControlToValidate="uxEmailAddress" ErrorMessage="Email Address Required" Text="*" runat="server" />
            <br />
            <asp:Label ID="lblConfirmEmailAddress" CssClass="right_label" AssociatedControlID="uxConfirmEmailAddress" Text="Confirm Email Address: " runat="server" />
            <asp:TextBox ID="uxConfirmEmailAddress" CssClass="email_textbox" runat="server" />
            <asp:CompareValidator ID="vConfirmEmailAddress" ControlToValidate="uxConfirmEmailAddress" ControlToCompare="uxEmailAddress" ErrorMessage="Confirmation Email Address Mismatch" Text="*" runat="server"/>
            <br />

            <asp:Label ID="lblStreetAddress" CssClass="right_label" AssociatedControlID="uxStreetAddress" Text="Street Address: " runat="server" />
            <asp:TextBox ID="uxStreetAddress" CssClass="address_textbox" runat="server" />
            <br />

            <asp:Label ID="lblCity" CssClass="right_label" AssociatedControlID="uxCity" Text="City: " runat="server" />
            <asp:TextBox ID="uxCity" runat="server" />
            <br />

            <asp:Label ID="lblState" CssClass="right_label" AssociatedControlID="uxState" Text="State: " runat="server" />
            <asp:dropdownlist ID="uxState" runat="server">
                <asp:ListItem>Oregon</asp:ListItem>
                <asp:ListItem>Washington</asp:ListItem>
                <asp:ListItem>California</asp:ListItem>
            </asp:dropdownlist>
            <br />

            <asp:Label ID="lblZipcode" CssClass="right_label" AssociatedControlID="uxZipcode" Text="Zipcode: " runat="server" />
            <asp:TextBox ID="uxZipcode" runat="server" />
            <asp:RegularExpressionValidator ID="vZipcode" ControlToValidate="uxZipcode" ValidationExpression="\d{5}(\-\d{4})?" ErrorMessage="Invalid Zipcode" Text="*" runat="server" />
            <br />

            <asp:Label ID="lblProfileImageUpload" CssClass="right_label" AssociatedControlID="uxProfileImageUpload" Text="Profile Image: " runat="server" />
            <asp:FileUpload ID="uxProfileImageUpload" runat="server" />
            <asp:CustomValidator ID="vProfileImageUpload" ControlToValidate="uxProfileImageUpload" 
                OnServerValidate="vProfileImageUpload_ServerValidate" ClientValidationFunction="validateFile" ErrorMessage="Wrong Image Format" Text="*" runat="server" />
            <br />
            
            <asp:Button ID="uxSaveProfile" Text="Save Profile" runat="server" OnClick="uxSaveProfile_Click" />
            <br />

            <asp:ValidationSummary ID="uxValidation" ShowMessageBox="true" ShowSummary="true" runat="server" />
            <br />
        </asp:View>
        <asp:View ID="uxSecondView" runat="server">
            
            <div class="left_image">
                <asp:Image ID="uxImage" CssClass="profile_image" runat="server" />
            </div>

            <div class="inline_div">
                <br />
                <strong class="literal_label">First Name: </strong>
                <asp:Literal ID="lFirstName" runat="server"></asp:Literal>
                <br />

                <strong class="literal_label">Last Name: </strong>
                <asp:Literal ID="lLastName" runat="server"></asp:Literal>
                <br />

                <strong class="literal_label">Age: </strong>
                <asp:Literal ID="lAge" runat="server"></asp:Literal>
                <br />

                <strong class="literal_label">Phone Number: </strong>
                <asp:Literal ID="lPhoneNumber" runat="server"></asp:Literal>
                <br />

                <strong class="literal_label">Email Address: </strong>
                <asp:Literal ID="lEmailAddress" runat="server"></asp:Literal>
                <br />

                <strong class="literal_label">Street Address: </strong>
                <asp:Literal ID="lStreetAddress" runat="server"></asp:Literal>
                <br />

                <strong class="literal_label">City: </strong>
                <asp:Literal ID="lCity" runat="server"></asp:Literal>
                <br />

                <strong class="literal_label">State: </strong>
                <asp:Literal ID="lState" runat="server"></asp:Literal>
                <br />

                <strong class="literal_label">ZipCode: </strong>
                <asp:Literal ID="lZipcode" runat="server"></asp:Literal>
                <br />

                <asp:Button ID="uxEditProfile" Text="Edit Profile" runat="server" OnClick="uxEditProfile_Click" />
                <br />
                <br />
            </div>
<%--
            <div class="right_image">
                <asp:Image ID="uxImage" CssClass="profile_image" runat="server" />
            </div>--%>
            
        </asp:View>
    </asp:MultiView>
    <br />
</asp:Content>
