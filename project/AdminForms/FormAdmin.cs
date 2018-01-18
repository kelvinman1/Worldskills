using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace project.AdminForms
{
    public partial class FormAdmin : Form
    {
        public FormAdmin()
        {
            InitializeComponent();
        }

        private void FormAdmin_FormClosing(object sender, FormClosingEventArgs e)
        {
            Application.Exit();
        }
    }
}
