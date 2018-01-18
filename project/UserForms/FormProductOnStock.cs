using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace project.UserForms
{
    public partial class FormProductOnStock : Form
    {
        private DBConnection connection = DBConnection.Initialize();
        private MySqlDataAdapter mySqlDataAdapter;

        public FormProductOnStock()
        {
            InitializeComponent();
            MySqlConnection con = connection.getConnection();
            string query = "select * from users";
            mySqlDataAdapter = new MySqlDataAdapter(query, con);

            DataSet ds = new DataSet();
            mySqlDataAdapter.Fill(ds, "users");

            dataGridView1.DataSource = ds.Tables["users"];
        }

        private void FormProductOnStock_Load(object sender, EventArgs e)
        {

        }
    }
}
