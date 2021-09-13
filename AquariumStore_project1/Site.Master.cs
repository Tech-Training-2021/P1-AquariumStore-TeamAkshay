using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AquariumStore_project1
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public LinkButton linkReg
        {
            get
            {
                return this.register_btn;
            }
        }
        public LinkButton linkLogin
        {
            get
            {
                return this.login_btn;
            }
        }
        public LinkButton linklogout
        {
            get
            {
                return this.logout_btn;
            }
        }
        public LinkButton profile_button
        {
            get
            {
                return this.profile;
            }
        }

        //public Label username_show
        //{
        //    get
        //    {
        //        return this.username_loggedin;
        //    }
        //}

        protected void login_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UserAccess/Login");
        }

        protected void register_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UserAccess/Registration");
        }

        protected void logout_btn_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/UserAccess/Login");
        }

        protected void profile_Click(object sender, EventArgs e)
        {

        }
    }
}