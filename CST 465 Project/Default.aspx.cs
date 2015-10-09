using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST_465_Project
{
    public partial class Default : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            uxEventOutput.Text += "OnLoad, ";
        }
        
        protected void Page_Init(object sender, EventArgs e)
        {
            uxIsPostBack.Text = "Posted Back";
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            uxEventOutput.Text += "OnPreRender, ";
        }

        protected void uxSubmit_Click(object sender, EventArgs e)
        {

        }
    }
}