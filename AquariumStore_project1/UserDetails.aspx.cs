using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AquariumStore_project1
{
    public partial class UserDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                getdetails();
            }
        }

        protected void getdetails()
        {
            string username = Session["username"].ToString();
            string CS = ConfigurationManager.ConnectionStrings["Aquarium-DB"].ConnectionString;

            SqlConnection con = new SqlConnection(CS);
            SqlCommand cmd = new SqlCommand("userdetails");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Connection = con;
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    tb_username.Text = reader["Username"].ToString();
                    tb_role.Text = reader["role"].ToString();
                    tb_name.Text = reader["name"].ToString();
                    tb_gender.Text = reader["gender"].ToString();
                    tb_email.Text = reader["Email"].ToString();
                    tb_phone.Text = reader["phone_number"].ToString();

                }
            }
            con.Close();

        }
        protected void btn_update_Click(object sender, EventArgs e)
        {
            
        }
    }
}