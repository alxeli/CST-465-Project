using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;

namespace CST_465_Project
{
    public partial class Blog : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            if (Page.User.Identity.IsAuthenticated)
            {
                MembershipUser user = Membership.GetUser();
                dsBlog.InsertParameters.Add(new Parameter("Author", DbType.Guid, ((Guid)user.ProviderUserKey).ToString()));
            }
        }
    }
}