using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIT_LAB_QUE
{
    public partial class Task4_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                uid.Focus();
            }
        }

        protected void IP_login(object sender, EventArgs e)
        {
            if (uid.Text == "admin"  && pwd.Text == "admin") {
                Response.Redirect("Task4-Success.aspx");
            }
        }
    }
}