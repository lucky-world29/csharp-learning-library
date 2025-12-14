using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIT_LAB_QUE
{
    public partial class Student_Registration_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                txtFirstname.Focus();
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            if(IsValid)
            {
                
            }
            else
            {
             
            }
        }
    }
}