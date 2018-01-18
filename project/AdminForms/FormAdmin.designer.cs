namespace project.AdminForms
{
    partial class FormAdmin
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
            this.одобритьВыделенноеToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.очиститьИстекшиеToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.менеджерыToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.добавитьToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.удалитьToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.бронированиеToolStripMenuItem,
            this.менеджерыToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(520, 24);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // бронированиеToolStripMenuItem
            // 
            this.бронированиеToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.одобритьВыделенноеToolStripMenuItem,
            this.очиститьИстекшиеToolStripMenuItem});
            this.бронированиеToolStripMenuItem.Name = "бронированиеToolStripMenuItem";
            this.бронированиеToolStripMenuItem.Size = new System.Drawing.Size(100, 20);
            this.бронированиеToolStripMenuItem.Text = "Бронирование";
            // 
            // одобритьВыделенноеToolStripMenuItem
            // 
            this.одобритьВыделенноеToolStripMenuItem.Name = "одобритьВыделенноеToolStripMenuItem";
            this.одобритьВыделенноеToolStripMenuItem.Size = new System.Drawing.Size(198, 22);
            this.одобритьВыделенноеToolStripMenuItem.Text = "Одобрить выделенное";
            // 
            // очиститьИстекшиеToolStripMenuItem
            // 
            this.очиститьИстекшиеToolStripMenuItem.Name = "очиститьИстекшиеToolStripMenuItem";
            this.очиститьИстекшиеToolStripMenuItem.Size = new System.Drawing.Size(198, 22);
            this.очиститьИстекшиеToolStripMenuItem.Text = "Очистить истекшие";
            // 
            // менеджерыToolStripMenuItem
            // 
            this.менеджерыToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.добавитьToolStripMenuItem,
            this.удалитьToolStripMenuItem});
            this.менеджерыToolStripMenuItem.Name = "менеджерыToolStripMenuItem";
            this.менеджерыToolStripMenuItem.Size = new System.Drawing.Size(86, 20);
            this.менеджерыToolStripMenuItem.Text = "Менеджеры";
            // 
            // добавитьToolStripMenuItem
            // 
            this.добавитьToolStripMenuItem.Name = "добавитьToolStripMenuItem";
            this.добавитьToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.добавитьToolStripMenuItem.Text = "Добавить";
            // 
            // удалитьToolStripMenuItem
            // 
            this.удалитьToolStripMenuItem.Name = "удалитьToolStripMenuItem";
            this.удалитьToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.удалитьToolStripMenuItem.Text = "Удалить";
            // 
            // FormAdmin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(520, 36);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "FormAdmin";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FormAdmin";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FormAdmin_FormClosing);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem бронированиеToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem одобритьВыделенноеToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem очиститьИстекшиеToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem менеджерыToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem добавитьToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem удалитьToolStripMenuItem;
    }
}