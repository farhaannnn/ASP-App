using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"server=DELL-G15\SQLEXPRESS;database=dotnet;Integrated Security = true");
            string q = $"SELECT count(id) from dbo.profile WHERE username ='{TextBox1.Text}' AND pass='{TextBox2.Text}'";
            conn.Open();
            SqlCommand cmd = new SqlCommand(q, conn);
            string r = cmd.ExecuteScalar().ToString();
            if(r == "1")
            {
                string query = $"SELECT id from dbo.profile WHERE username ='{TextBox1.Text}' AND pass='{TextBox2.Text}'";
                cmd = new SqlCommand(query, conn);
                string result = cmd.ExecuteScalar().ToString();
                Label3.Text = result;
                Session["uid"] = result;
                conn.Close();
                Response.Redirect("UpdatingProfile.aspx");


            }
            else
            {
                Label3.Text = "User not found.";
            }
        }
    }
}