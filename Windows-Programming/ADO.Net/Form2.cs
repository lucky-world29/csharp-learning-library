using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Odbc;
using System.Data.OleDb;
using System.Data.OracleClient;
using System.Data.SqlClient;
using System.Diagnostics.Metrics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Runtime.InteropServices.JavaScript.JSType;
using Microsoft.Data.SqlClient;
using SqlConnection = Microsoft.Data.SqlClient.SqlConnection;

namespace ADO.Net
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            OdbcConnection con = new OdbcConnection("DSN=SqlDSN");
            con.Open();
            MessageBox.Show("Connection State: " + con.State);
            con.Close();
            MessageBox.Show("Connection State: " + con.State);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection();
            con.ConnectionString = "Provider=MSOLEDBSQL;Data Source=LUCKY;Database=CSDB;Integrated Security=SSPI";
            con.Open();
            MessageBox.Show("Connection State: " + con.State);
            con.Close();
            MessageBox.Show("Connection State: " + con.State);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LUCKY;Database=CSDB;Integrated Security=SSPI;TrustServerCertificate=True");
            //sqlCon.ConnectionString=("Data Source = LUCKY; Database = CSDB; Integrated Security = SSPI");
            con.Open();
            MessageBox.Show("Connection State:" + con.State);
            con.Close();
            MessageBox.Show("Connection State:" + con.State);
        }

        private void Form2_Load(object sender, EventArgs e)
        {
          
         }
    }
}
