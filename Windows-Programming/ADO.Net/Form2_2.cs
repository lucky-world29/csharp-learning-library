using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.Data.SqlClient;
using System.Windows.Forms;


namespace ADO.Net
{
    public partial class Form2_2 : Form
    {

        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;

        public Form2_2()
        {
            InitializeComponent();
        }
        private void ShowData()
        {
            if (dr.Read())
            {
                textBox1.Text = dr.GetValue(0).ToString();     // Deptno
                textBox2.Text = dr[1].ToString();              // Dname
                textBox3.Text = dr["Location"].ToString();     // Location
            }
            else
            {
                MessageBox.Show("You are at the last record of table.",
                    "Information",
                    MessageBoxButtons.OK,
                    MessageBoxIcon.Information);
            }
        }
        private void Form2_2_Load(object sender, EventArgs e)
        {
            // Create connection
            con = new SqlConnection(
                "Data Source=LUCKY;Database=CSDB;User Id=Sa;Password=luckyrex;TrustServerCertificate=True;"
            );

            // Create command
            cmd = new SqlCommand("Select Deptno, Dname, Location From Dept Order By Deptno", con);

            // Open connection
            con.Open();

            // Execute reader
            dr = cmd.ExecuteReader();

            // Assign column names to labels
            label1.Text = dr.GetName(0) + ": ";
            label2.Text = dr.GetName(1) + ": ";
            label3.Text = dr.GetName(2) + ": ";

            // Load first record
            ShowData();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            ShowData();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (con.State != ConnectionState.Closed)
            {
                con.Close();
            }

            this.Close();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
