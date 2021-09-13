using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace AquariumStore_project1
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btn_Register_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Read the connection string from web.config.
                // ConfigurationManager class is in System.Configuration namespace
                string CS = ConfigurationManager.ConnectionStrings["Aquarium-DB"].ConnectionString;

                int gender_checked=0;           

                if (gender_rb.SelectedItem.Text == "Female")
                {
                    gender_checked = 1;
                }
                else
                {
                    gender_checked = 2;
                }


                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("spRegisterUser", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    
                    
                    SqlParameter role = new SqlParameter("@role", 2);  //role=customer
                    SqlParameter name = new SqlParameter("@name", tb_name.Text);
                    SqlParameter gender = new SqlParameter("@gender", gender_checked);
                    SqlParameter email = new SqlParameter("@Email", tb_email.Text);
                    SqlParameter phone = new SqlParameter("@phone", tb_phone.Text);
                    SqlParameter username = new SqlParameter("@UserName", tb_username.Text);
                    // FormsAuthentication calss is in System.Web.Security namespace
                    string encryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(tb_pass.Text, "SHA1");
                    SqlParameter password = new SqlParameter("@Password", encryptedPassword);
                    cmd.Parameters.Add(role);
                    cmd.Parameters.Add(name);
                    cmd.Parameters.Add(gender);
                    cmd.Parameters.Add(email);
                    cmd.Parameters.Add(phone);
                    cmd.Parameters.Add(username);
                    cmd.Parameters.Add(password);

                    con.Open();
                    int ReturnCode = (int)cmd.ExecuteScalar();
                    if (ReturnCode == -1)
                    {
                        lblMessage.Text = "User Name already in use, please choose another user name";
                    }
                    else
                    {
                        Response.Redirect("~/UserAccess/Login.aspx");
                    }
                }
            }


        }
    }
}