using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void subbtn_Click(object sender, EventArgs e)
        {
            int answer = Convert.ToInt32(num1.Text) -  Convert.ToInt32(num2.Text);
            ans.Text = $"{answer}";
            ans.Visible = true;
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void addbtn_Click(object sender, EventArgs e)
        {
            int answer = Convert.ToInt32(num1.Text) +  Convert.ToInt32(num2.Text);
            ans.Text = $"{answer}";
            ans.Visible = true;
        }

        protected void mulbtn_Click(object sender, EventArgs e)
        {
            int answer = Convert.ToInt32(num1.Text) * Convert.ToInt32(num2.Text);
            ans.Text = $"{answer}";
            ans.Visible = true;
        }

        protected void divbtn_Click(object sender, EventArgs e)
        {
            int answer = Convert.ToInt32(num1.Text) / Convert.ToInt32(num2.Text);
            ans.Text = $"{answer}";
            ans.Visible = true;
        }
    }
}