using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIT_LAB_QUE
{
    public partial class Task5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtEmployeeId.Focus();
            }
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txtEmployeeId.Text);
            string name = txtEmployeeName.Text;
            double basicSalary = double.Parse(txtBasicSalary.Text);

            /*
             display TA 10%, DA 12%, HRA 15% , PF 10%, IT 5%, 
              Gross Pay , Net Pay. 
              gross = basic + ta + da + hra; 
                net = gross - (pf + it); 
             */

            double ta = 0.10 * basicSalary; 
            double da = 0.12 * basicSalary;
            double hra = 0.15 * basicSalary;
            double pf = 0.10 * basicSalary;
            double it = 0.05 * basicSalary;

            double grossPay = basicSalary + ta + da + hra;
            double netPay = grossPay - (pf + it);

            LabelResult.Text = "Name :" + name + "<br/>" +
                               "Basic Salary: " + basicSalary + "<br/>" +
                               "TA: " + ta + "<br/>" +
                               "DA: " + da + "<br/>" +
                               "HRA: " + hra + "<br/>" +
                               "PF: " + pf + "<br/>" +
                               "IT: " + it + "<br/>" +
                               "Gross Pay: " + grossPay + "<br/>" +
                               "Net Pay: " + netPay;
        }
    }
}