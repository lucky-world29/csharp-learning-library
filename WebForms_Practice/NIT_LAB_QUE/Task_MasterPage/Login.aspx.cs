using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIT_LAB_QUE.Task_MasterPage
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Static values (No database)
            string userId = "admin";
            string password = "123";

            if (txtUserId.Text == userId && txtPassword.Text == password)
            {
                Response.Write("<script>alert('Login Successfully');</script>");
            }
            else
            {
                lblMessage.Text = "Go to Registration Form";
            }
        }
    }
}