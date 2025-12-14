using System;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace ADO.Net
{
    public partial class LabTask1 : Form
    {
        public LabTask1()
        {
            InitializeComponent();

        }

        private void button1_Click(object sender, EventArgs e)
        {
           
            label3.Text = "";
 
            int num = Convert.ToInt32(textBox1.Text.Trim());

            var sb = new StringBuilder();
            for (int i = 1; i <= num; i++)
            {
                for (int j = 1; j <= i; j++)
                {
                    sb.Append("*");
                    if (j < i) sb.Append(" ");
                }
                if (i < num) sb.AppendLine();
            }
            label3.Text = sb.ToString();
        }

            private void LabTask1_Load(object sender, EventArgs e) { }

        private void textBox1_TextChanged(object sender, EventArgs e) { }
    }
}