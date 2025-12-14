using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIT_LAB_QUE
{
    public partial class Task9_EmailConfirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            this.UnobtrusiveValidationMode=UnobtrusiveValidationMode.None; // J query 
            if (!IsPostBack) { 
            txtEmail.Focus();
            }

        }

        protected void smtBtn_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Text = "Your registration is successful.";
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Validations failed please re-check your data.";
            }

        }
    }
}