using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIT_LAB_QUE
{
    public partial class Task_8_RadioButton_List_Dec_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_ans_submmit(object sender, EventArgs e)
        {
            int score = 0;

            //if(RadioButtonList1.SelectedIndex==2)
            //{
            //    score++;
            //}

            string q1 = RadioButtonList1.Text;
            string q2 = RadioButtonList2.Text;
            string q3 = RadioButtonList3.Text;
            string q4 = RadioButtonList4.Text;
            string q5 = RadioButtonList5.Text;
            string q6 = RadioButtonList6.Text;

            if (q1 == "c")
            {
                score++;
            }
            if (q2 == "b")
            {
                score++;
            }
            if (q3 == "c")
            {
                score++;
            }
            if (q4 == "d")
            {
                score++;
            }
            if (q5 == "b")
            {
                score++;
            }
            if (q6 == "c")
            {
                score++;
            }
            lbl_result.Text = "The Score is : " + score + " out of 6";
        }
    }
}