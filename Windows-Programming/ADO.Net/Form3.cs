using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Configuration;
//using System.Data.SqlClient;
using System.Data.Odbc;
using Microsoft.Data.SqlClient;

namespace ADO.Net
{
    public partial class Form3 : Form
    {
        //OdbcConnection con;
        //OdbcCommand cmd;
        //OdbcDataReader dr;

        SqlConnection con; //CONNECTION
        SqlCommand cmd;//COMMAND
        SqlDataReader dr;// DATAREADER

        public Form3()
        {
            InitializeComponent();
        }

        private void Form3_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=LUCKY;Database=CSDB;User Id=sa;Password=luckyrex;TrustServerCertificate=true");
            cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();

            //cmd.CommandText = "Select Eno, Ename, Job, Salary, Status From Employee Order By Eno";
            //dr = cmd.ExecuteReader();
            //ShowData();
            LoadData();
        }

        private void LoadData()
        {
            cmd.CommandText = "Select Eno, Ename, Job, Salary, Status From Employee Where Status=1 Order By Eno";
            dr = cmd.ExecuteReader();
            ShowData();
        }

        private void ShowData()
        {
            if (dr.Read())
            {
                textBox1.Text = dr["Eno"].ToString();
                textBox2.Text = dr["Ename"].ToString();
                textBox3.Text = dr["Job"].ToString();
                textBox4.Text = dr["Salary"].ToString();
                checkBox1.Checked = (bool)dr["Status"];
            }
            else
            {
                MessageBox.Show("Either the table is empty or you are at the last record of table", "Information ", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            // NEXT
            ShowData();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            //NEW 
            checkBox1.Checked = false;
            textBox1.Text = textBox2.Text = textBox3.Text = textBox4.Text = "";
            if (dr != null && !dr.IsClosed)
                dr.Close();

            cmd.CommandText = "select ISNULL(MAX(Eno),100)+1 from Employee";
            textBox1.Text = cmd.ExecuteScalar().ToString();
            button3.Enabled = true;// insert buttoonenabled 
            textBox2.Focus();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            //INSERT

            cmd.CommandText = $"insert into Employee(Eno,Ename,Job,Salary,Photo,Status) values({textBox1.Text},'{textBox2.Text}','{textBox3.Text}',{textBox4.Text},NULL,{Convert.ToInt32(checkBox1.Checked)});";
            MessageBox.Show(cmd.CommandText);
            if (cmd.ExecuteNonQuery() > 0)
            {
                MessageBox.Show("Record Inserted Successfully", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                //cmd.CommandText = "Select Eno, Ename, Job, Salary, Status From Employee Order By Eno";
                //dr = cmd.ExecuteReader();
                //ShowData();
                LoadData();
                button3.Enabled = false;// insert button disabled
            }

        }

        private void button4_Click(object sender, EventArgs e)
        {
            //UPDATE

            cmd.CommandText = "";
        }

        private void button5_Click(object sender, EventArgs e)
        {
            //DELETE

            cmd.CommandText = "";
        }

        private void button6_Click(object sender, EventArgs e)
        {

            // CLOSE
            if (con.State != ConnectionState.Closed)
            { con.Close(); }
            this.Close();
        }
    }
}
