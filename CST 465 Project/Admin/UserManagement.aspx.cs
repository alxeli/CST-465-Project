using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace CST_465_Project.Admin
{
    public partial class UserManagement : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            LoadRoles();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void uxAddRole_Click(object sender, EventArgs e)
        {
            if(!Roles.RoleExists(uxRoleNameBox.Text))
            {
                Roles.CreateRole(uxRoleNameBox.Text);
                LoadRoles();
            }
        }

        protected void LoadRoles()
        {
            uxRoles.Items.Clear();

            //populate listbox
            foreach (string c_role in Roles.GetAllRoles())
            {
                uxRoles.Items.Add(c_role);
            }
        }
    }
}