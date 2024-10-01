using System;
using System.Collections.Generic;
using System.Configuration;
using System.Diagnostics.SymbolStore;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnpress(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
  

            labelname.Text = TextBox1.Text;
            labelage.Text = TextBox2.Text;
            labeladdress.Text = TextBox3.Text;
            labelphone.Text = TextBox4.Text;
            labelmail.Text = TextBox5.Text;
            
            string img = "~/Photo/";
            img += FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(img));
            Image1.ImageUrl = img;
            Panel1.Visible = true;
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            labelgender.Text = RadioButtonList1.SelectedValue;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            labelstate.Text = DropDownList1.SelectedValue;
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            labelqualification.Text = "" + CheckBoxList1.SelectedIndex;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"server=DELL-G15\SQLEXPRESS;database=dotnet;Integrated Security = true");
            con.Open();
            
            string qualification = "";
            string photo = "~/Photo/"+FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(photo));
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    qualification += CheckBoxList1.Items[i].Text;
                }
            }

            string query = $"INSERT into dbo.profile VALUES(5,'{TextBox1.Text}',{TextBox2.Text},'{TextBox3.Text}',{TextBox4.Text},'{TextBox5.Text}','{RadioButtonList1.Text}','{DropDownList1.Text}','{qualification}','{photo}','{TextBox6.Text}','{TextBox7.Text}')";
            SqlCommand cmd = new SqlCommand(query, con);
            int res = cmd.ExecuteNonQuery();
            if(res<=0)
            {
                Label15.Text = "Insert Failed";
            }
            else
            {
                Console.WriteLine("Inseted succesfully");
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}