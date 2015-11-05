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
    public class TrueFalseQuestion : CompositeControl, ITestQuestion
    {
        public string QuestionText { get; set; }
        public string Answer { get { return m_radio.SelectedItem.Value; } set { m_radio.SelectedItem.Value = value; } }

        private Label m_label;
        private RadioButtonList m_radio;
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

            //create controls
            m_label = new Label();
            m_radio = new RadioButtonList();
            m_validator = new RequiredFieldValidator();

            //set control properties
            m_label.ID = "lblQuestion";
            m_label.Text = QuestionText;
            m_radio.ID = "uxAnswer";
            m_radio.Items.Add("True");
            m_radio.Items.Add("False");
            m_validator.ID = "vAnswer";
            m_validator.ControlToValidate = m_radio.ID;

            //add controls
            Controls.Add(m_label);
            Controls.Add(m_radio);
            Controls.Add(m_validator);
        }
    }
}
