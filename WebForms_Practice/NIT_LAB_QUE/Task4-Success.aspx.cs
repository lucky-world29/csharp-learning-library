using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIT_LAB_QUE
{
    public partial class Task4_Success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void retunPage(object sender, EventArgs e)
        {
            Server.Transfer("Task4.aspx");
        }
    }
}