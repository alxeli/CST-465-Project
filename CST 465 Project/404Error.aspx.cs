using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST_465_Project
{
    public partial class _404Error : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            uxMessage.Text = Request.QueryString["source"];
            Response.StatusCode = 404;
        }
    }
}