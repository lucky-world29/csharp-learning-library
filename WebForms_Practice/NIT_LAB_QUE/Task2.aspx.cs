using System;
using System.Web.UI;

namespace NIT_LAB_QUE
{
    public partial class Task2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Submit(object sender, EventArgs e)
        {
            string rollNo = txtRollNo.Text;
            string name = txtName.Text;
            int? s1 = int.Parse(txtSub1.Text);
            int? s2 = int.Parse(txtSub2.Text);
            int? s3 = int.Parse(txtSub3.Text);

                int? total = s1 + s2 + s3;
                int? avg = total / 3;

                // Always show marks
                lblMarks.Text = "Marks: " + s1 + ", " + s2 + ", " + s3;

                if (s1 < 35 || s2 < 35 || s3 < 35)
            {
                lblResult.Text = "Result : Fail";
                lblResult.ForeColor = System.Drawing.Color.Red;

                // Hide pass-only details
                lblName.Text = "";
                lblRollNo.Text = "";
                lblTotal.Text = "";
                lblAvg.Text = "";
                lblGrade.Text = "";
            }
            else
            {
                lblName.Text = "Name : " + name;
                lblName.ForeColor = System.Drawing.Color.Blue;
                lblRollNo.Text = "Roll Number : " + rollNo;
                lblTotal.Text = "Total : " + total;
                lblAvg.Text = "Average : " + avg;
                lblResult.Text = "Result : Pass";
                lblResult.ForeColor = System.Drawing.Color.Green;

                if (avg >= 80 && avg <= 100)
                    lblGrade.Text = "Grade : A";
                else if (avg >= 70)
                    lblGrade.Text = "Grade : B";
                else if (avg >= 60)
                    lblGrade.Text = "Grade : C";
                else
                    lblGrade.Text = "Grade : D";
            }


        }

        protected void btn_Reset(object sender, EventArgs e)
        {
            txtRollNo.Text = txtName.Text = txtSub1.Text = txtSub2.Text = txtSub3.Text = "";
            lblName.Text = lblRollNo.Text = lblTotal.Text = lblAvg.Text = lblGrade.Text = lblResult.Text = lblMarks.Text ="";
        }
    }
}
