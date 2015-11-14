using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CST_465_Project.Code;

namespace CST_465_Project
{
    public partial class Results : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            uxRepeater.DataSource = (List<QuestionAnswer>)Session["QuestionAnswers"];
            uxRepeater.DataBind();
        }
    }
}