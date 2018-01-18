using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using project.AdminForms;
using project.UserForms;

namespace project
{
    public partial class FormAuth : Form
    {
        DBConnection connection;
        public FormAuth()
        {
            InitializeComponent();
            connection = DBConnection.Initialize();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (connection.Authorization(textBox1.Text, textBox2.Text))
            {
                Hide();
                if (connection.GetGroupId() == Groups.USER)
                {
                    FormUser form = new FormUser();
                    form.Show();
                }
                else if (connection.GetGroupId() == Groups.ADMIN)
                {
                    FormAdmin form = new FormAdmin();
                    form.Show();
                }
                else
                {
                    MessageBox.Show("Неопознанная пользовательская группа!");
                }
            }
        }
    }
    public class Groups
    {
        public const int USER = 2;
        public const int ADMIN = 1;
    }

}
