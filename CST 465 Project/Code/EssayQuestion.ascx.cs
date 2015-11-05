using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST_465_Project.Code
{
    public partial class EssayQuestion : System.Web.UI.UserControl, ITestQuestion
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string QuestionText
        {
            get { return lblQuestion.Text; }
            set { lblQuestion.Text = value; }
        }

        public string Answer
        {
            get { return uxAnswer.Text; }
            set { uxAnswer.Text = value; }
        }
    }
}