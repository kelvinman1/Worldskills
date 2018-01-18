namespace project.UserForms
{
    partial class FormUser
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.бронированиеToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.поСайтуToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.оПрограммеToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.помошьToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.бронированиеToolStripMenuItem,
            this.помошьToolStripMenuItem,
            this.оПрограммеToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(594, 24);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // бронированиеToolStripMenuItem
            // 
            this.бронированиеToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.поСайтуToolStripMenuItem});
            this.бронированиеToolStripMenuItem.Name = "бронированиеToolStripMenuItem";
            this.бронированиеToolStripMenuItem.Size = new System.Drawing.Size(123, 20);
            this.бронированиеToolStripMenuItem.Text = "Работа со складом";
            // 
            // поСайтуToolStripMenuItem
            // 
            this.поСайтуToolStripMenuItem.Name = "поСайтуToolStripMenuItem";
            this.поСайтуToolStripMenuItem.Size = new System.Drawing.Size(191, 22);
            this.поСайтуToolStripMenuItem.Text = "Продукция на складе";
            this.поСайтуToolStripMenuItem.Click += new System.EventHandler(this.поСайтуToolStripMenuItem_Click);
            // 
            // оПрограммеToolStripMenuItem
            // 
            this.оПрограммеToolStripMenuItem.Name = "оПрограммеToolStripMenuItem";
            this.оПрограммеToolStripMenuItem.Size = new System.Drawing.Size(94, 20);
            this.оПрограммеToolStripMenuItem.Text = "О программе";
            // 
            // помошьToolStripMenuItem
            // 
            this.помошьToolStripMenuItem.Name = "помошьToolStripMenuItem";
            this.помошьToolStripMenuItem.Size = new System.Drawing.Size(68, 20);
            this.помошьToolStripMenuItem.Text = "Помошь";
            // 
            // FormUser
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(594, 24);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.MaximumSize = new System.Drawing.Size(610, 63);
            this.MinimumSize = new System.Drawing.Size(610, 63);
            this.Name = "FormUser";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FormUser";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FormUser_FormClosing);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem бронированиеToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem поСайтуToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem оПрограммеToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem помошьToolStripMenuItem;
    }
}