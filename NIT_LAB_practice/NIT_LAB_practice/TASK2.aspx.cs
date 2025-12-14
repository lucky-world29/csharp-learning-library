using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIT_LAB_practice
{
    public partial class TASK2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btn_Submit(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string gender = rbMale.Checked ? "Male" : "Female";

                Response.Write("<script>alert('Form Submitted Successfully');</script>");
            }
        }

        protected void cvGender_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (rbMale.Checked || rbFemale.Checked)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

    }
}
