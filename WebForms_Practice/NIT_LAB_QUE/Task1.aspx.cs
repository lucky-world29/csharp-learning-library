using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIT_LAB_QUE
{
    public partial class Task1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(!IsPostBack)
            //{
            //    Response.Write("<span style='color:green'>Page Loaded Successfully</span>");
            //}
        }

        protected void btnId_Click(object sender, EventArgs e)
        {
            string user = name.Text;
            string pass = password.Text;

            if (user == "Vaibhav" && pass == "vai@123")
            {
                Response.Write("<span style='color:blue'>Welcome to New Form</span>");
            }
            else
            {
                Response.Write("<span style='color:red'>Invalid user id/password</span>");
            }
        }
    }
}