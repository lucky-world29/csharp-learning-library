using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIT_LAB_QUE
{
    public partial class Task6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                TextBoxCustomerID.Focus();
            }
        }

        protected void BillCalculate(object sender, EventArgs e)
        {
            double units = Convert.ToDouble(TextBoxUnit.Text);
            double result = 0;

            if (units <= 100)
            {
                result = units * 3;
            }
            else if (units <= 200)
            {
                result = (100 * 3) + ((units - 100) * 4);
            }
            else if (units <= 300)
            {
                result = (100 * 3) + (100 * 4) + ((units - 200) * 5);
            }
            else
            {
                result = (100 * 3) + (100 * 4) + (100 * 5) + ((units - 300) * 6);
            }

            LabelResult.Text = "Total Electricity Bill : ₹ " + result.ToString("N2");
        }

    }
}