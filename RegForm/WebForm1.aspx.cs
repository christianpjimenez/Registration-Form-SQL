using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace RegForm
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        string gender;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void btnReg_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=Sebastian7;Initial Catalog=RegisterUser;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[userreg]
           ([name]
           ,[address]
           ,[gender]
           ,[phone]
           ,[email]
           ,[username]
           ,[password])
     VALUES
           ('" + txtName.Text + "', '" + txtAdd.Text + "', '" + gender + "', '" + txtPhone.Text + "', '" + txtEmail.Text + "', '" + txtUser.Text + "', '" + txtPass.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('user was registered successfully')</script>");
        
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            gender = "male";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            gender = "female";
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            gender = "non binary";
        }
    }
}