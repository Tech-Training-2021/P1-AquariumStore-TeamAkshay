using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AquariumStore_project1
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                
                Master.linkLogin.Visible = false;
                Master.linkReg.Visible = false;
                Master.linklogout.Visible = true;
                Master.profile_button.Text = Session["UserName"].ToString();
                //Master.username_show.Text = Session["UserName"].ToString();
            }
            else
            {
                Response.Redirect("~/UserAccess/Login.aspx");
            }

        }
    }
}