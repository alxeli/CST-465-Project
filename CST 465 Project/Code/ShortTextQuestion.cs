using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST_465_Project.Code
{
    [DefaultProperty("Text")]
    [ToolboxData("<{0}:ShortTextQuestion2 runat=server></{0}:ShortTextQuestion2>")]
    public class ShortTextQuestion : CompositeControl, ITestQuestion
    {
        public string QuestionText { get; set; }
        public string Answer { get { return m_textbox.Text; } set { m_textbox.Text = value; } }

        private Label m_label;
        private TextBox m_textbox;
        private RequiredFieldValidator m_validator;

        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue("")]
        [Localizable(true)]
        public string Text
        {
            get
            {
                String s = (String)ViewState["Text"];
                return ((s == null) ? String.Empty : s);
            }

            set
            {
                ViewState["Text"] = value;
            }
        }

        protected override void CreateChildControls()
        {
            base.CreateChildControls();
            
            //HttpContext.Current.Trace.Write("Create Child Controls");

            //create controls
            m_label = new Label();
            m_textbox = new TextBox();
            m_validator = new RequiredFieldValidator();

            //set control properties
            m_label.ID = "lblQuestion";
            m_label.Text = QuestionText;
            m_textbox.ID = "uxAnswer";
            m_validator.ID = "vAnswer";
            m_validator.ControlToValidate = m_textbox.ID;

            //add controls
            Controls.Add(m_label);
            Controls.Add(m_textbox);
            Controls.Add(m_validator);
        }
    }
}
