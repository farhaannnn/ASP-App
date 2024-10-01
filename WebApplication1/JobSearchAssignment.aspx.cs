using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class JobSearchAssignment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"server=DELL-G15\SQLEXPRESS;database=dotnet;Integrated Security = true");
            string query = "";
            if(string.IsNullOrEmpty(TextBox1.Text) && string.IsNullOrEmpty(TextBox2.Text) && string.IsNullOrEmpty(TextBox3.Text))
            {
                query += "SELECT * from dbo.company"; 
            }
            else
            {
                query+= "SELECT * FROM dbo.company WHERE";
                if (!string.IsNullOrEmpty(TextBox1.Text))
                {
                    query += $" compname LIKE '%{TextBox1.Text}%'";

                }
                if (!string.IsNullOrEmpty(TextBox2.Text) && !string.IsNullOrEmpty(TextBox1.Text))
                {
                    query += $" AND skills LIKE '%{TextBox2.Text}%'";
                }
                else if (string.IsNullOrEmpty(TextBox1.Text) && !string.IsNullOrEmpty(TextBox2.Text))
                {
                    query += $" skills LIKE '%{TextBox2.Text}%'";
                }

                if (string.IsNullOrEmpty(TextBox1.Text) && string.IsNullOrEmpty(TextBox2.Text))
                {
                    query += $" exp LIKE {TextBox3.Text}";
                }
                else if(string.IsNullOrEmpty(TextBox3.Text))
                {
                }
                else
                {
                    query += $"AND exp LIKE {TextBox3.Text}";
                }

            }
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
    }
}