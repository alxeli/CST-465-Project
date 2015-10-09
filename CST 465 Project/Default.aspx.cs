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
            if (Page.IsPostBack)
            {
                uxIsPostBack.Text += "PostedBack<br />";
            }
        }
        
        protected void Page_Init(object sender, EventArgs e)
        {
            uxEventOutput.Text = "OnInit<br />";
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            uxEventOutput.Text += "OnPreRender<br />";
        }

        protected void uxSubmit_Click(object sender, EventArgs e)
        {
            uxEventOutput.Text += "Submitted: " 
                + uxName.Text + " "
                + uxHobby.Text + " "
                + uxBiography.Text + " "
                + uxCoursePrefix.Text + " " 
                + uxCourseNumber.Text + " " 
                + uxCourseDescription.Text + "<br />";
        }
    }
}