using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Collections;

namespace WebApplication1
{
    public partial class UpdatingProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string q = "SELECT name,age,phoneno,photo FROM dbo.profile WHERE id="+Session["uid"];
            SqlConnection conn = new SqlConnection(@"server=DELL-G15\SQLEXPRESS;database=dotnet;Integrated Security = true");
            conn.Open();
            SqlCommand cmd = new SqlCommand(q, conn);
            SqlDataReader sd = cmd.ExecuteReader();
            while(sd.Read())
            {
                TextBox1.Text = sd["name"].ToString();
                TextBox2.Text = sd["age"].ToString();
                TextBox3.Text = sd["phoneno"].ToString();
                Image1.ImageUrl = sd["photo"].ToString();
            }
            conn.Close();



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"server=DELL-G15\SQLEXPRESS;database=dotnet;Integrated Security = true");
            conn.Open();
            string query = $"UPDATE dbo.profile SET name = '{TextBox1.Text}',age ={TextBox2.Text} WHERE id = {Session["uid"]}";
            SqlCommand cmd = new SqlCommand(query, conn);
            int r = cmd.ExecuteNonQuery();
            if(r==1)
            {
                Label6.Text = "Updated in DB";
                conn.Close();
            }   
        }
    }
}