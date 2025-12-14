using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIT_LAB_QUE
{
    public partial class Task7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CustomerId.Focus();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int CId = int.Parse(CustomerId.Text);
            string CName = txtName.Text;
            int DUsed = int.Parse(txtData.Text);

            // Reading the dropdown  selected text and value
            string selectedPlanText = ddlPlan.SelectedItem.Text;     // Basic / Standard / Premium
            string selectedPlanValue = ddlPlan.SelectedValue;        // B / S / P

            if(selectedPlanValue == "B")
            {

            }
            LabelResult.Text = "Customer Id: " + CId + "<br/>" +
                               "Customer Name: " + CName + "<br/>" +
                               "Data Used: " + DUsed + "<br/>" +
                               "Plan Type: " + selectedPlanText + " (" + selectedPlanValue + ")";
        }
    }
}