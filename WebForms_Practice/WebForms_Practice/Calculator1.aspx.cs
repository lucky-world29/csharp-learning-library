using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForms_Practice
{
    public partial class Calculator1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtNum1.Focus();
            }

        }

        protected void Buttons_Click(object sender, EventArgs e)
        {
            int num1 = int.Parse(txtNum1.Text);
            int num2 = int.Parse(txtNum2.Text);

            int result = 0;

            //Button b = new Button();

            Button b = (Button)sender;
           // Response.Write(b.ID); //[just to check the ID or Text is coming or not ]
            switch(b.ID){
                case "btnAdd": 
                    result = num1 + num2;
                    break;
                case "btnMul":
                    result = num1 * num2;
                    break;
                case "btnDiv":
                    result = num1 / num2;
                    break;
                case "btnSub":
                    result = num1 - num2;
                    break;
            }
            txtResult.Text = result.ToString();
        }

        protected void clear_Click(object sender, EventArgs e)
        {
            // clear all or reset 

           // txtNum1.Text = txtNum2.Text= txtResult.Text = string.Empty;
            //(or)
            txtNum1.Text = txtNum2.Text = txtResult.Text = "";
            txtNum1.Focus();
        }

        protected void Buttons_Command(object sender, CommandEventArgs e)
        {

        }
    }
}