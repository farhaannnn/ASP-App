using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class GridSelect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GridPopulate();
            }
            
        }

        void GridPopulate()
        {
            SqlConnection conn = new SqlConnection(@"server=DELL-G15\SQLEXPRESS;database=dotnet;Integrated Security = true");
            string query = $"SELECT * from dbo.profile";
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow rw = GridView1.Rows[e.NewSelectedIndex];
            Label1.Text = rw.Cells[2].Text;
            Label2.Text = rw.Cells[1].Text;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            SqlConnection conn = new SqlConnection(@"server=DELL-G15\SQLEXPRESS;database=dotnet;Integrated Security = true");
            string query = $"DELETE from dbo.profile WHERE id={id}";
            SqlCommand sqlCommand = new SqlCommand(query, conn);
            conn.Open();
            sqlCommand.ExecuteNonQuery();
            conn.Close();
            GridPopulate();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridPopulate();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridPopulate();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox name = (TextBox)GridView1.Rows[i].Cells[4].Controls[0];
            TextBox age = (TextBox)GridView1.Rows[i].Cells[5].Controls[0];
            string query = $"UPDATE dbo.profile set name='{name.Text}',age={age.Text} WHERE id={id}";
            SqlConnection conn = new SqlConnection(@"server=DELL-G15\SQLEXPRESS;database=dotnet;Integrated Security = true");
            SqlCommand sqlCommand = new SqlCommand(query, conn);
            conn.Open();
            sqlCommand.ExecuteNonQuery();
            conn.Close();
            GridView1.EditIndex = -1;
            GridPopulate();



        }
    }
}