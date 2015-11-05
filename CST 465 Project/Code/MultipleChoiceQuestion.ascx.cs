using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST_465_Project.Code
{
    public partial class MultipleChoiceQuestion : System.Web.UI.UserControl, ITestQuestion
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            foreach(ListItem item in Items)
            {
                uxQuestions.Items.Add(item);
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string QuestionText
        {
            get { return lblQuestions.Text; }
            set { lblQuestions.Text = value; }
        }

        [PersistenceMode(PersistenceMode.InnerProperty)]
        public string Answer
        {
            get { return uxQuestions.SelectedItem.Value; }
            set { uxQuestions.SelectedItem.Value = value; }
        }

        public List<ListItem> Items
        {
            get;
            set;
        }
    }
}