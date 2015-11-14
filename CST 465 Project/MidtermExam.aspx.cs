using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CST_465_Project.Code;

namespace CST_465_Project
{
    public partial class MidtermExam : System.Web.UI.Page
    {
        List<QuestionAnswer> m_question_answers = null;
        Control[] questions = new Control[29];

        protected void Page_Load(object sender, EventArgs e)
        {
            questions[0] = new TrueFalseQuestion();
            (questions[0] as TrueFalseQuestion).QuestionText = "HTTP is a stateless protocol";
            questions[1] = new TrueFalseQuestion();
            (questions[1] as TrueFalseQuestion).QuestionText = "SessionState can be transferred between pages";
            questions[2] = new TrueFalseQuestion();
            (questions[2] as TrueFalseQuestion).QuestionText = "Sanitizing database inputs is only important for sites handling sensitive information";
            questions[3] = new TrueFalseQuestion();
            (questions[3] as TrueFalseQuestion).QuestionText = "ViewState can be transferred between pages";
            questions[4] = new TrueFalseQuestion();
            (questions[4] as TrueFalseQuestion).QuestionText = "Cookies can be transferred between pages";
            questions[5] = new TrueFalseQuestion();
            (questions[5] as TrueFalseQuestion).QuestionText = "It is a good practice to use inline CSS styles";
            questions[6] = new TrueFalseQuestion();
            (questions[6] as TrueFalseQuestion).QuestionText = "All controls in ASP.NET support DataBinding";
            questions[7] = new TrueFalseQuestion();
            (questions[7] as TrueFalseQuestion).QuestionText = "Browsers must support ASP.NET in order to display pages created with it";
            questions[8] = new TrueFalseQuestion();
            (questions[8] as TrueFalseQuestion).QuestionText = "When a MasterPage is used, a page wraps its own content with the MasterPages’s content";
            questions[9] = new TrueFalseQuestion();
            (questions[9] as TrueFalseQuestion).QuestionText = "&lt;deny&gt; authorization rules in the web.config are processed first regardless of the way the rules are ordered.";

            questions[10] = (EssayQuestion)LoadControl("~/Code/EssayQuestion.ascx");
            (questions[10] as EssayQuestion).QuestionText = "Place the following events in order of when they occur in the page lifecycle:<br />Load, Init, Request Arrives, PreRender, Load ViewState, Input Control Event Handling";
            questions[11] = (EssayQuestion)LoadControl("~/Code/EssayQuestion.ascx");
            (questions[11] as EssayQuestion).QuestionText = "What is the purpose of the doctype  declaration at the top of a web page?";
            questions[12] = (EssayQuestion)LoadControl("~/Code/EssayQuestion.ascx");
            (questions[12] as EssayQuestion).QuestionText = "What is the order of precedence for the same style defined in the following ways?<br />Style tag in document head, Extenal Style Sheet referenced by the link tag in document head";
            questions[13] = (EssayQuestion)LoadControl("~/Code/EssayQuestion.ascx");
            (questions[13] as EssayQuestion).QuestionText = "What is the order of precedence for CSS for referencing elements in the following ways<br />By Element Name, By ID, By CSS Class, Inline using the style=”” attribute";
            questions[14] = (EssayQuestion)LoadControl("~/Code/EssayQuestion.ascx");
            (questions[14] as EssayQuestion).QuestionText = "Explain why the alt attribute of the img tag is important";
            questions[15] = (EssayQuestion)LoadControl("~/Code/EssayQuestion.ascx");
            (questions[15] as EssayQuestion).QuestionText = "What is the purpose of name mangling?";
            questions[16] = (EssayQuestion)LoadControl("~/Code/EssayQuestion.ascx");
            (questions[16] as EssayQuestion).QuestionText = "Explain the difference between redirects that use a 301 HTTP status code and ones that use a 302 HTTP status code";

            questions[17] = (MultipleChoiceQuestion)LoadControl("~/Code/MultipleChoiceQuestion.ascx");
            (questions[17] as MultipleChoiceQuestion).QuestionText = "HTML Stands for:";
            (questions[17] as MultipleChoiceQuestion).Items.Add(new ListItem("HoTMaiL", "HoTMaiL"));
            (questions[17] as MultipleChoiceQuestion).Items.Add(new ListItem("Highly Transferable Modeling Language", "Highly Transferable Modeling Language"));
            (questions[17] as MultipleChoiceQuestion).Items.Add(new ListItem("HyperText Markup Language", "HyperText Markup Language"));
            (questions[17] as MultipleChoiceQuestion).Items.Add(new ListItem("High Traffic Masking Language", "High Traffic Masking Language"));

            questions[18] = (MultipleChoiceQuestion)LoadControl("~/Code/MultipleChoiceQuestion.ascx");
            (questions[18] as MultipleChoiceQuestion).QuestionText = "All controls that ask for user input should have an associated";
            (questions[18] as MultipleChoiceQuestion).Items.Add(new ListItem("Label", "Label"));
            (questions[18] as MultipleChoiceQuestion).Items.Add(new ListItem("Validator", "Validator"));
            (questions[18] as MultipleChoiceQuestion).Items.Add(new ListItem("Event Handler", "Event Handler"));
            (questions[18] as MultipleChoiceQuestion).Items.Add(new ListItem("Ferret", "Ferret"));

            questions[19] = (MultipleChoiceQuestion)LoadControl("~/Code/MultipleChoiceQuestion.ascx");
            (questions[19] as MultipleChoiceQuestion).QuestionText = "The living version of a page within the web browser is called the";
            (questions[19] as MultipleChoiceQuestion).Items.Add(new ListItem("Output Rendering Model", "Output Rendering Model"));
            (questions[19] as MultipleChoiceQuestion).Items.Add(new ListItem("Document Object Model", "Document Object Model"));
            (questions[19] as MultipleChoiceQuestion).Items.Add(new ListItem("Box Model", "Box Model"));
            (questions[19] as MultipleChoiceQuestion).Items.Add(new ListItem("Underwear Model", "Underwear Model"));

            questions[20] = (MultipleChoiceQuestion)LoadControl("~/Code/MultipleChoiceQuestion.ascx");
            (questions[20] as MultipleChoiceQuestion).QuestionText = "Which of the following elements is most appropriate for presenting the user with a list of items in no particular order?";
            (questions[20] as MultipleChoiceQuestion).Items.Add(new ListItem("ol", "ol"));
            (questions[20] as MultipleChoiceQuestion).Items.Add(new ListItem("ul", "ul"));
            (questions[20] as MultipleChoiceQuestion).Items.Add(new ListItem("dl", "dl"));
            (questions[20] as MultipleChoiceQuestion).Items.Add(new ListItem("dropdownliste", "dropdownliste"));

            questions[21] = (MultipleChoiceQuestion)LoadControl("~/Code/MultipleChoiceQuestion.ascx");
            (questions[21] as MultipleChoiceQuestion).QuestionText = "What is the difference between the ViewStateMode and EnableViewState properties in the <%@ Page %> declaration?";
            (questions[21] as MultipleChoiceQuestion).Items.Add(new ListItem("ViewStateMode was introduced in ASP.NET 4 to allow more than true/false values, but currently there is no distinguishable difference in functionality", "ViewStateMode was introduced in ASP.NET 4 to allow more than true/false values, but currently there is no distinguishable difference in functionality"));
            (questions[21] as MultipleChoiceQuestion).Items.Add(new ListItem("When ViewState is disabled via ViewStateMode, it can't be enabled at the control level", "When ViewState is disabled via ViewStateMode, it can't be enabled at the control level"));
            (questions[21] as MultipleChoiceQuestion).Items.Add(new ListItem("When ViewState is disabled via EnableViewState, it can't be enabled at the control level", "When ViewState is disabled via EnableViewState, it can't be enabled at the control level"));
            (questions[21] as MultipleChoiceQuestion).Items.Add(new ListItem("When ViewState is enabled via ViewStateMode, it can't be disabled at the control level", "When ViewState is enabled via ViewStateMode, it can't be disabled at the control level"));
            (questions[21] as MultipleChoiceQuestion).Items.Add(new ListItem("When ViewState is enabled via EnableViewState, it can't be disabled at the control level", "When ViewState is enabled via EnableViewState, it can't be disabled at the control level"));


            questions[22] = new ShortTextQuestion();
            (questions[22] as ShortTextQuestion).QuestionText = "The line of text that tells a SqlDataSource how to connect to the database is called a ";
            questions[23] = new ShortTextQuestion();
            (questions[23] as ShortTextQuestion).QuestionText = "When a WebForms page performs a POST operation to itself, it is referred to as a ";
            questions[24] = new ShortTextQuestion();
            (questions[24] as ShortTextQuestion).QuestionText = "The term for loading a controls data from a data source is ";
            questions[25] = new ShortTextQuestion();
            (questions[25] as ShortTextQuestion).QuestionText = "An example of a block element is ";
            questions[26] = new ShortTextQuestion();
            (questions[26] as ShortTextQuestion).QuestionText = "An example of an inline element is ";
            questions[27] = new ShortTextQuestion();
            (questions[27] as ShortTextQuestion).QuestionText = "What is the name of the file that stores configuration information for a web site? ";
            questions[28] = new ShortTextQuestion();
            (questions[28] as ShortTextQuestion).QuestionText = "A div with the following CSS will have what computed height and width? { margin: 0 0 5px; padding: 5px 10px; height: 100px; width: 50px;  border-left: solid 3px #0c0; } ";

            foreach (Control q in questions)
            {
                uxQuestions.Controls.Add(q);
            }
        }

        protected void uxSubmit_Click(object sender, EventArgs e)
        {
            m_question_answers = new List<QuestionAnswer>();

            foreach (Control c in uxQuestions.Controls)
            {
                if (c is ITestQuestion)
                {
                    ITestQuestion question = c as ITestQuestion;
                    QuestionAnswer qa = new QuestionAnswer();
                    qa.QuestionText = question.QuestionText;
                    qa.Answer = question.Answer;
                    m_question_answers.Add(qa);
                }
            }

            Session["QuestionAnswers"] = m_question_answers;

            Response.Redirect("~/Results.aspx");
        }

    }
}