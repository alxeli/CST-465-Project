using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using CST_465_Project.Code;

namespace CST_465_Project
{
    public partial class Assignment4Test : System.Web.UI.Page
    {
        List<ITestQuestion> questions; //to keep track of various question controls

        protected void Page_Init(object sender, EventArgs e)
        {
            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //add all controls to a list of controls to later iterate over
            questions = new List<ITestQuestion>();
            questions.Add(uxEssay);
            questions.Add(uxMultipleChoice);
            questions.Add(uxShortText);
            questions.Add(uxTrueFalse);

            //set server control questions
            uxShortText.QuestionText = "What is your first name?";
            uxTrueFalse.QuestionText = "Do you currently attend OIT?";
        }

        protected void uxSubmit_Click(object sender, EventArgs e)
        {
            StringBuilder result = new StringBuilder();

            //append a string consisting of each question and answer
            foreach(ITestQuestion question in questions)
            {
                result.Append(question.QuestionText);
                result.Append(question.Answer);
            }

            //set literal control to the resulting string that was built
            uxResultLiteral.Text = result.ToString();
        }
    }
}