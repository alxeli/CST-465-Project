using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST_465_Project
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void uxSaveProfile_Click(object sender, EventArgs e)
        {
            if(IsValid)
            {
                uxMultiView.ActiveViewIndex = 1;

                lFirstName.Text = uxFirstName.Text;
                lLastName.Text = uxLastName.Text;
                lAge.Text = uxAge.Text;
                lPhoneNumber.Text = uxPhoneNumber.Text;
                lEmailAddress.Text = uxEmailAddress.Text;
                
                if (uxProfileImageUpload.HasFile)
                {
                    string base64String = null;
                    byte[] buffer = new byte[uxProfileImageUpload.PostedFile.ContentLength];
                    uxProfileImageUpload.PostedFile.InputStream.Read(buffer, 0, uxProfileImageUpload.PostedFile.ContentLength);
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
    }
}