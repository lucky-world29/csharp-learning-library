using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIT_LAB_QUE
{
    public partial class Task4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void mainLogBtn(object sender, EventArgs e)
        {
            Response.Redirect("Task4-Login.aspx");
        }
    }
}