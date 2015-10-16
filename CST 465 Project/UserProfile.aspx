<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="CST_465_Project.UserProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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

</head>
<body>
    <h1>User Profile</h1>
    <form id="form1" runat="server">
    <div>
        <asp:MultiView ID="uxMultiView" ActiveViewIndex="0" runat="server">
            <asp:View ID="uxFirstView" runat="server">
                <asp:Label ID="lblFirstName" AssociatedControlID="uxFirstName" Text="First Name: " runat="server" />
                <asp:TextBox ID="uxFirstName" runat="server" />
                <asp:RequiredFieldValidator ID="vFirstName" ControlToValidate="uxFirstName" ErrorMessage="First Name Required" Text="*" runat="server" />
                <br />

                <asp:Label ID="lblLastName" AssociatedControlID="uxLastName" Text="Last Name: " runat="server" />
                <asp:TextBox ID="uxLastName" runat="server" />
                <asp:RequiredFieldValidator ID="vLastName" ControlToValidate="uxLastName" ErrorMessage="Last Name Required" Text="*" runat="server" />
                <br />

                <asp:Label ID="lblAge" AssociatedControlID="uxAge" Text="Age: " runat="server" />
                <asp:TextBox ID="uxAge" runat="server" />
                <asp:RangeValidator ID="vAge" ControlToValidate="uxAge" MinimumValue="0" MaximumValue="200" Type="Integer" ErrorMessage="Age must be between 0 and 200" Text="*" runat="server"/>
                <br />

                <asp:Label ID="lblPhoneNumber" AssociatedControlID="uxPhoneNumber" Text="Phone Number: " runat="server" />
                <asp:TextBox ID="uxPhoneNumber" runat="server" />
                <asp:RequiredFieldValidator ID="vPhoneNumber" ControlToValidate="uxPhoneNumber" ErrorMessage="Phone Number Required" Text="*" runat="server" />
                <br />

                <asp:Label ID="lblEmailAddress" AssociatedControlID="uxEmailAddress" Text="Email Address: " runat="server" />
                <asp:TextBox ID="uxEmailAddress" runat="server" />
                <asp:RequiredFieldValidator ID="vEmailAddress" ControlToValidate="uxEmailAddress" ErrorMessage="Email Address Required" Text="*" runat="server" />
                <br />
                <asp:Label ID="lblConfirmEmailAddress" AssociatedControlID="uxConfirmEmailAddress" Text="Confirm Email Address: " runat="server" />
                <asp:TextBox ID="uxConfirmEmailAddress" runat="server" />
                <asp:CompareValidator ID="vConfirmEmailAddress" ControlToValidate="uxConfirmEmailAddress" ControlToCompare="uxEmailAddress" ErrorMessage="Confirmation Email Address Mismatch" Text="*" runat="server"/>
                <br />

                <asp:Label ID="lblStreetAddress" AssociatedControlID="uxStreetAddress" Text="Street Address: " runat="server" />
                <asp:TextBox ID="uxStreetAddress" runat="server" />
                <br />

                <asp:Label ID="lblCity" AssociatedControlID="uxCity" Text="City: " runat="server" />
                <asp:TextBox ID="uxCity" runat="server" />
                <br />

                <asp:Label ID="lblState" AssociatedControlID="uxState" Text="State: " runat="server" />
                <asp:dropdownlist ID="uxState" runat="server">
                    <asp:ListItem>Oregon</asp:ListItem>
                    <asp:ListItem>Washington</asp:ListItem>
                    <asp:ListItem>California</asp:ListItem>
                </asp:dropdownlist>
                <br />

                <asp:Label ID="lblZipcode" AssociatedControlID="uxZipcode" Text="Zipcode: " runat="server" />
                <asp:TextBox ID="uxZipcode" runat="server" />
                <asp:RegularExpressionValidator ID="vZipcode" ControlToValidate="uxZipcode" ValidationExpression="\d{5}(\-\d{4})?" ErrorMessage="Invalid Zipcode" Text="*" runat="server" />
                <br />

                <asp:Label ID="lblProfileImageUpload" AssociatedControlID="uxProfileImageUpload" Text="Profile Image: " runat="server" />
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
                <strong>First Name</strong>
                <asp:Literal ID="lFirstName" runat="server"></asp:Literal>
                <br />

                <strong>Last Name</strong>
                <asp:Literal ID="lLastName" runat="server"></asp:Literal>
                <br />

                <strong>Age</strong>
                <asp:Literal ID="lAge" runat="server"></asp:Literal>
                <br />

                <strong>Phone Number</strong>
                <asp:Literal ID="lPhoneNumber" runat="server"></asp:Literal>
                <br />

                <strong>Email Address</strong>
                <asp:Literal ID="lEmailAddress" runat="server"></asp:Literal>
                <br />
                
                <asp:Image ID="uxImage" runat="server" />
                <br />
            </asp:View>
        </asp:MultiView>
        <br />

        
    </div>
    </form>
</body>
</html>
