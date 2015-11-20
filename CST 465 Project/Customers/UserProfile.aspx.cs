using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using CST_465_Project.Code;

namespace CST_465_Project
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            uxMultiView.ActiveViewIndex = 1;

            //get the globally unique id for the user profile
            MembershipUser user = Membership.GetUser();
            Guid userID = (Guid)user.ProviderUserKey;

            UserProfileObject profile = null;// (UserProfileObject)Session["ProfileData"];

            //store business object in the database
            profile = UserProfileRepo.GetUserProfile(userID);

            //store business object in session state
            Session["ProfileData"] = profile;

            //update labels on view 2 & store data into business object
            lFirstName.Text = profile.FirstName;
            lLastName.Text = profile.LastName;
            lAge.Text = profile.Age.ToString();
            lPhoneNumber.Text = profile.PhoneNumber;
            lEmailAddress.Text = profile.Email;
            lStreetAddress.Text = profile.Address;
            lCity.Text = profile.City;
            lState.Text = profile.State;
            lZipcode.Text = profile.ZipCode;

            //store image into business object
            string base64String = null;
            byte[] buffer = profile.Image;
                
            if(buffer != null)
            {
                using (MemoryStream m = new MemoryStream(buffer))
                {
                    byte[] imageBytes = m.ToArray();

                    // Convert byte[] to Base64 String                    
                    base64String = Convert.ToBase64String(imageBytes);
                }
                if (!string.IsNullOrEmpty(base64String))
                {
                    uxImage.ImageUrl = "data:image/jpeg;base64," + base64String;
                }
            }
            
        }

        protected void uxSaveProfile_Click(object sender, EventArgs e)
        {
            if(IsValid)
            {
                //get the globally unique id for the user profile
                MembershipUser user = Membership.GetUser();
                Guid userID = (Guid)user.ProviderUserKey;

                UserProfileObject profile = new UserProfileObject();
                
                uxMultiView.ActiveViewIndex = 1;

                //store data into business object
                profile.UserID = userID;
                profile.FirstName = uxFirstName.Text;
                profile.LastName = uxLastName.Text;
                profile.Age = Int32.Parse(uxAge.Text);
                profile.PhoneNumber = uxPhoneNumber.Text;
                profile.Email = uxEmailAddress.Text;
                profile.Address = uxStreetAddress.Text;
                profile.City = uxCity.Text;
                profile.State = uxState.Text;
                profile.ZipCode = uxZipcode.Text;
                
                if (uxProfileImageUpload.HasFile)
                {
                    //string base64String = null;

                    byte[] buffer = new byte[uxProfileImageUpload.PostedFile.ContentLength];

                    //store image into business object
                    uxProfileImageUpload.PostedFile.InputStream.Read(buffer, 0, uxProfileImageUpload.PostedFile.ContentLength);
                    profile.Image = buffer;
                }

                //store business object in the session
                Session["ProfileData"] = profile;

                //store business object in the database
                UserProfileRepo.SaveUserProfile(profile);

                Response.Redirect("UserProfile.aspx");
            }
        }

        protected void vProfileImageUpload_ServerValidate(object source, ServerValidateEventArgs args)
        {
            String ext = Path.GetExtension(uxProfileImageUpload.PostedFile.FileName);

            if (ext == ".jpg" || ext == ".png" || ext == ".gif")
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void uxEditProfile_Click(object sender, EventArgs e)
        {

            if (IsValid)
            {
                uxMultiView.ActiveViewIndex = 0;

                //store business object in session state
                UserProfileObject profile = (UserProfileObject)Session["ProfileData"];

                uxFirstName.Text = profile.FirstName;
                uxLastName.Text = profile.LastName;
                uxAge.Text = profile.Age.ToString();
                uxPhoneNumber.Text = profile.PhoneNumber;
                uxEmailAddress.Text = profile.Email;
                //uxConfirmEmailAddress.Text = profile.Email;
                uxStreetAddress.Text = profile.Address;
                uxCity.Text = profile.City;
                //uxState.Text = profile.State;
                uxZipcode.Text = profile.ZipCode;
            }
        }
    }
}