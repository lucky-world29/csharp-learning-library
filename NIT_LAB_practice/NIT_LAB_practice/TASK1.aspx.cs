using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIT_LAB_practice
{
    public partial class TASK1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit(object sender, EventArgs e)
        {
            int result = 0;

            //string q1answer = q1o2.Text;
            //string q2answer = q2o3.Text;
            //string q3answer = q3o1.Text;



            if (q1o2.Checked)
            {
                result += 1;
            }
            if (q2o3.Checked)
            {
                result += 1;
            }

            if (q3o3.Checked)
            {
                result += 1;
            }

            ResultLabel.Text = "Your Score is: " + result.ToString() + "/3";
        }
    }
}