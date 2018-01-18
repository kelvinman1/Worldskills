using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace project.UserForms
{
    public partial class FormUser : Form
    {
        public FormUser()
        {
            InitializeComponent();
        }

        private void FormUser_FormClosing(object sender, FormClosingEventArgs e)
        {
            Application.Exit();
        }

        private void поСайтуToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormProductOnStock form = new FormProductOnStock();
            form.Show();
            form.Location = new Point(Location.X, Location.Y + Height);
        }
    }
}
