using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIT_LAB_QUE.Task_MasterPage
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Show values in label
            lblShow.Text = "Name: " + txtName.Text + "<br/>" +
                           "Email: " + txtEmail.Text + "<br/>" +
                           "Phone: " + txtPhone.Text + "<br/>" +
                           "Address: " + txtAddress.Text;

            // Clear all inputs
            txtName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtAddress.Text = "";
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            // Clear inputs and label
            txtName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtAddress.Text = "";
            lblShow.Text = "";
        }
    }
}