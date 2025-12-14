/*using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIT_LAB_QUE
{
    public partial class Task11_NIT_CALCULATOR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_click_for_all(object sender, EventArgs e)
        {
            var btntext = ((Button)sender).Text;

            // CLEAR
            if (btntext == "C")
            {
                resTxtBox.Text = "";
                return;
            }

            // RESULT
            if (btntext == "=")
            {
                try
                {
                    string expression = resTxtBox.Text;

                    // Evaluate manually
                    double result = EvaluateExpression(expression);

                    resTxtBox.Text = result.ToString();
                }
                catch
                {
                    resTxtBox.Text = "Error";
                }
                return;
            }

            // Append numbers or operators
            resTxtBox.Text += btntext;
        }

        private double EvaluateExpression(string expression)
        {
            double result = 0;

            if (expression.Contains("+"))
            {
                var p = expression.Split('+');
                result = Convert.ToDouble(p[0]) + Convert.ToDouble(p[1]);
            }
            else if (expression.Contains("-"))
            {
                var p = expression.Split('-');
                result = Convert.ToDouble(p[0]) - Convert.ToDouble(p[1]);
            }
            else if (expression.Contains("*"))
            {
                var p = expression.Split('*');
                result = Convert.ToDouble(p[0]) * Convert.ToDouble(p[1]);
            }
            else if (expression.Contains("/"))
            {
                var p = expression.Split('/');
                double right = Convert.ToDouble(p[1]);

                if (right == 0)
                    throw new Exception("Cannot divide by zero.");

                result = Convert.ToDouble(p[0]) / right;
            }

            return result;
        }
    }
}
*/
// 

using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIT_LAB_QUE
{
    public partial class Task11_NIT_CALCULATOR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_click_for_all(object sender, EventArgs e)
        {
            var btntext = ((System.Web.UI.WebControls.Button)sender).Text; // string <=

            if (btntext == "C")
            {
                resTxtBox.Text = "";
                return;
            }

            if (btntext == "=")
            {
                try
                {
                    string expression = resTxtBox.Text;
                    //Evaluate the expression manually . using DataTable.Compute method
                    double result = EvaluateException(expression);
                    resTxtBox.Text = result.ToString();
                }
                catch
                {
                    resTxtBox.Text = "Error";
                }
                return;
            }
            //Apend operators and numbers to the text box

            resTxtBox.Text += btntext;
        }
            private double EvaluateException(string expression)
        {
            double result = 0;

            if (expression.Contains("+"))
            {
                //var tokens = expression.Split('+');
                //result = tokens.Select(double.Parse).Sum();
                string[] p = expression.Split('+');
                result = Convert.ToDouble(p[0]) + Convert.ToDouble(p[1]);
            }
            else if (expression.Contains("-"))
            {
                //var tokens = expression.Split('-');
                //result = double.Parse(tokens[0]);
                //for(int i=1; i<tokens.Length; i++)
                //{
                //    result -= double.Parse(tokens[i]);
                //}
                string[] p = expression.Split('-');
                result = Convert.ToDouble(p[0]) - Convert.ToDouble(p[1]);
            }
            else if (expression.Contains("*"))
            {
                //var tokens = expression.Split('*');
                //result = 1;
                //foreach(var token in tokens)
                //{
                //    result *= double.Parse(token);
                string[] p = expression.Split('*');
                result = Convert.ToDouble(p[0]) * Convert.ToDouble(p[1]);
            }

            else if (expression.Contains("/"))
            {
                //var tokens = expression.Split('/');
                //result = double.Parse(tokens[0]);
                //for(int i=1; i<tokens.Length; i++)
                //{
                //    result /= double.Parse(tokens[i]);
                //}
                string[] p = expression.Split('/');
                double right = Convert.ToDouble(p[1]);
                if (right == 0)
                {
                    throw new Exception("Division by zero is not allowed.");
                }
                result = Convert.ToDouble(p[0]) / right;
            }
            return result;
        }

    }
}
