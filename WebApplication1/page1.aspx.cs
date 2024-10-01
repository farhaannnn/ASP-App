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
    public partial class page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                SqlConnection conn = new SqlConnection(@"server=DELL-G15\SQLEXPRESS;database=dotnet;Integrated Security = true");
                string query = "SELECT name from dbo.profile";
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataSet ds = new DataSet();
                da.Fill(ds);
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "name";
                //DropDownList1.DataValueField = "id"
                DropDownList1.DataBind();
            }    
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("page2.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = DropDownList1.SelectedItem.Text;
            Label2.Text = DropDownList1.DataValueField;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"server=DELL-G15\SQLEXPRESS;database=dotnet;Integrated Security = true");
            string query = $"SELECT * from dbo.profile WHERE name = '{DropDownList1.Text}'";
            SqlDataAdapter da = new SqlDataAdapter(query,conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"server=DELL-G15\SQLEXPRESS;database=dotnet;Integrated Security = true");
            string query = $"SELECT * from dbo.profile WHERE name = '{DropDownList1.Text}'";
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"server=DELL-G15\SQLEXPRESS;database=dotnet;Integrated Security = true");
            string query = $"SELECT * from dbo.company";
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }
    }
}