using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIT_LAB_QUE
{
    public partial class Task10_Compared_validator : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None; // J query 
            if(!IsPostBack)
            {
                txtUser.Focus();
            }
        }
    }
}