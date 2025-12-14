using Azure;
using Microsoft.Data.SqlClient;
using Microsoft.VisualBasic.ApplicationServices;
using System.Configuration;
using System.Data.Odbc;
using System.Data.OleDb;


namespace ADO.Net
{
    public partial class Form1 : Form
    {
        public Form1()
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
        private void button2_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection();

            con.ConnectionString = "Provider=SQLOLEDB;Data Source=LUCKY;Database=CSDB;Integrated Security=SSPI";
            con.Open();
            MessageBox.Show("Connection State: " + con.State);
            con.Close();
            MessageBox.Show("Connection State: " + con.State);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LUCKY;Database=CSDB;Integrated Security=SSPI;TrustServerCertificate=True");
            //SqlDataReader dr;

            con.Open();

            if (con.State != System.Data.ConnectionState.Closed)
            {
                MessageBox.Show("Connection Open");
                con.Close();
            }
        }

        
    }
}
