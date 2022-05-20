namespace Elevator.WPF
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.LevelNumLabel = new System.Windows.Forms.Label();
            this.label = new System.Windows.Forms.Label();
            this.ElevCave = new System.Windows.Forms.PictureBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.flowLayoutPanel1 = new System.Windows.Forms.FlowLayoutPanel();
            this.userControl11 = new Elevator.WPF.UserControl1();
            ((System.ComponentModel.ISupportInitialize)(this.ElevCave)).BeginInit();
            this.SuspendLayout();
            // 
            // LevelNumLabel
            // 
            this.LevelNumLabel.AutoSize = true;
            this.LevelNumLabel.Font = new System.Drawing.Font("Segoe UI", 72F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.LevelNumLabel.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(248)))), ((int)(((byte)(188)))), ((int)(((byte)(77)))));
            this.LevelNumLabel.Location = new System.Drawing.Point(25, 83);
            this.LevelNumLabel.Name = "LevelNumLabel";
            this.LevelNumLabel.Size = new System.Drawing.Size(164, 128);
            this.LevelNumLabel.TabIndex = 0;
            this.LevelNumLabel.Text = "00";
            this.LevelNumLabel.Click += new System.EventHandler(this.LevelNumLabel_Click);
            // 
            // label
            // 
            this.label.AutoSize = true;
            this.label.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(202)))), ((int)(((byte)(140)))));
            this.label.Location = new System.Drawing.Point(12, 9);
            this.label.Name = "label";
            this.label.Size = new System.Drawing.Size(53, 21);
            this.label.TabIndex = 1;
            this.label.Text = "Этаж:";
            // 
            // ElevCave
            // 
            this.ElevCave.Image = ((System.Drawing.Image)(resources.GetObject("ElevCave.Image")));
            this.ElevCave.Location = new System.Drawing.Point(218, 1);
            this.ElevCave.Name = "ElevCave";
            this.ElevCave.Size = new System.Drawing.Size(245, 280);
            this.ElevCave.TabIndex = 2;
            this.ElevCave.TabStop = false;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("Segoe UI", 36F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(179)))), ((int)(((byte)(144)))), ((int)(((byte)(80)))));
            this.label1.Location = new System.Drawing.Point(62, 194);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(84, 65);
            this.label1.TabIndex = 3;
            this.label1.Text = "00";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Font = new System.Drawing.Font("Segoe UI", 36F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(179)))), ((int)(((byte)(144)))), ((int)(((byte)(80)))));
            this.label2.Location = new System.Drawing.Point(62, 41);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(84, 65);
            this.label2.TabIndex = 4;
            this.label2.Text = "00";
            // 
            // flowLayoutPanel1
            // 
            this.flowLayoutPanel1.Location = new System.Drawing.Point(12, 410);
            this.flowLayoutPanel1.Name = "flowLayoutPanel1";
            this.flowLayoutPanel1.Size = new System.Drawing.Size(440, 297);
            this.flowLayoutPanel1.TabIndex = 5;
            // 
            // userControl11
            // 
            this.userControl11.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(106)))), ((int)(((byte)(110)))), ((int)(((byte)(189)))));
            this.userControl11.Cursor = System.Windows.Forms.Cursors.Hand;
            this.userControl11.ForeColor = System.Drawing.Color.Transparent;
            this.userControl11.Location = new System.Drawing.Point(25, 326);
            this.userControl11.Name = "userControl11";
            this.userControl11.Size = new System.Drawing.Size(78, 78);
            this.userControl11.TabIndex = 6;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(27)))), ((int)(((byte)(28)))), ((int)(((byte)(48)))));
            this.ClientSize = new System.Drawing.Size(464, 719);
            this.Controls.Add(this.userControl11);
            this.Controls.Add(this.flowLayoutPanel1);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.ElevCave);
            this.Controls.Add(this.label);
            this.Controls.Add(this.LevelNumLabel);
            this.Controls.Add(this.label1);
            this.Name = "Form1";
            this.Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)(this.ElevCave)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label LevelNumLabel;
        private System.Windows.Forms.Label label;
        private System.Windows.Forms.PictureBox ElevCave;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel1;
        private UserControl1 userControl11;
    }
}
