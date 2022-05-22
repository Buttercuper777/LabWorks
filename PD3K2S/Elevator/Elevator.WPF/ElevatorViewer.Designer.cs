namespace Elevator.WPF
{
    partial class ElevatorViewer
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ElevatorViewer));
            this.LevelNumLabel = new System.Windows.Forms.Label();
            this.label = new System.Windows.Forms.Label();
            this.ElevCave = new System.Windows.Forms.PictureBox();
            this.DownLevel = new System.Windows.Forms.Label();
            this.UpperLevel = new System.Windows.Forms.Label();
            this.flowLayoutPanel1 = new System.Windows.Forms.FlowLayoutPanel();
            this.userControl11 = new Elevator.WPF.UserControl1();
            this.AddressVal = new System.Windows.Forms.Label();
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
            this.LevelNumLabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
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
            this.ElevCave.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.ElevCave.Image = ((System.Drawing.Image)(resources.GetObject("ElevCave.Image")));
            this.ElevCave.Location = new System.Drawing.Point(218, 1);
            this.ElevCave.Name = "ElevCave";
            this.ElevCave.Size = new System.Drawing.Size(245, 280);
            this.ElevCave.TabIndex = 2;
            this.ElevCave.TabStop = false;
            // 
            // DownLevel
            // 
            this.DownLevel.AutoSize = true;
            this.DownLevel.BackColor = System.Drawing.Color.Transparent;
            this.DownLevel.Font = new System.Drawing.Font("Segoe UI", 36F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.DownLevel.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(179)))), ((int)(((byte)(144)))), ((int)(((byte)(80)))));
            this.DownLevel.Location = new System.Drawing.Point(62, 194);
            this.DownLevel.Name = "DownLevel";
            this.DownLevel.Size = new System.Drawing.Size(84, 65);
            this.DownLevel.TabIndex = 3;
            this.DownLevel.Text = "00";
            this.DownLevel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // UpperLevel
            // 
            this.UpperLevel.AutoSize = true;
            this.UpperLevel.BackColor = System.Drawing.Color.Transparent;
            this.UpperLevel.Font = new System.Drawing.Font("Segoe UI", 36F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.UpperLevel.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(179)))), ((int)(((byte)(144)))), ((int)(((byte)(80)))));
            this.UpperLevel.Location = new System.Drawing.Point(62, 41);
            this.UpperLevel.Name = "UpperLevel";
            this.UpperLevel.Size = new System.Drawing.Size(84, 65);
            this.UpperLevel.TabIndex = 4;
            this.UpperLevel.Text = "00";
            this.UpperLevel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // flowLayoutPanel1
            // 
            this.flowLayoutPanel1.Location = new System.Drawing.Point(12, 410);
            this.flowLayoutPanel1.Name = "flowLayoutPanel1";
            this.flowLayoutPanel1.Size = new System.Drawing.Size(440, 271);
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
            this.userControl11.Load += new System.EventHandler(this.userControl11_Load);
            // 
            // AddressVal
            // 
            this.AddressVal.AutoSize = true;
            this.AddressVal.Font = new System.Drawing.Font("Segoe UI Semibold", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.AddressVal.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(248)))), ((int)(((byte)(188)))), ((int)(((byte)(77)))));
            this.AddressVal.Location = new System.Drawing.Point(12, 685);
            this.AddressVal.Name = "AddressVal";
            this.AddressVal.Size = new System.Drawing.Size(126, 25);
            this.AddressVal.TabIndex = 7;
            this.AddressVal.Text = "Emty address";
            this.AddressVal.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // ElevatorViewer
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(27)))), ((int)(((byte)(28)))), ((int)(((byte)(48)))));
            this.ClientSize = new System.Drawing.Size(464, 719);
            this.Controls.Add(this.AddressVal);
            this.Controls.Add(this.userControl11);
            this.Controls.Add(this.flowLayoutPanel1);
            this.Controls.Add(this.UpperLevel);
            this.Controls.Add(this.ElevCave);
            this.Controls.Add(this.label);
            this.Controls.Add(this.LevelNumLabel);
            this.Controls.Add(this.DownLevel);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "ElevatorViewer";
            this.Text = "ELEVATOR VIEWER";
            this.Load += new System.EventHandler(this.ElevatorViewer_Load);
            ((System.ComponentModel.ISupportInitialize)(this.ElevCave)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label LevelNumLabel;
        private System.Windows.Forms.Label label;
        private System.Windows.Forms.PictureBox ElevCave;
        private System.Windows.Forms.Label DownLevel;
        private System.Windows.Forms.Label UpperLevel;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel1;
        private UserControl1 userControl11;
        private System.Windows.Forms.Label AddressVal;
    }
}
