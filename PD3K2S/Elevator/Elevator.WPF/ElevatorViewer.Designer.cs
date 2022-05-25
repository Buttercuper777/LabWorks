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
            this.AddressVal = new System.Windows.Forms.Label();
            this.flowLayoutPanel2 = new System.Windows.Forms.FlowLayoutPanel();
            this.elevatorPointers1 = new Elevator.WPF.ElevatorPointers();
            ((System.ComponentModel.ISupportInitialize)(this.ElevCave)).BeginInit();
            this.SuspendLayout();
            // 
            // LevelNumLabel
            // 
            this.LevelNumLabel.AutoSize = true;
            this.LevelNumLabel.Font = new System.Drawing.Font("Segoe UI", 72F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.LevelNumLabel.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(248)))), ((int)(((byte)(188)))), ((int)(((byte)(77)))));
            this.LevelNumLabel.Location = new System.Drawing.Point(37, 89);
            this.LevelNumLabel.Name = "LevelNumLabel";
            this.LevelNumLabel.Size = new System.Drawing.Size(164, 128);
            this.LevelNumLabel.TabIndex = 0;
            this.LevelNumLabel.Text = "00";
            this.LevelNumLabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
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
            this.ElevCave.Location = new System.Drawing.Point(207, 9);
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
            this.DownLevel.Location = new System.Drawing.Point(74, 200);
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
            this.UpperLevel.Location = new System.Drawing.Point(74, 47);
            this.UpperLevel.Name = "UpperLevel";
            this.UpperLevel.Size = new System.Drawing.Size(84, 65);
            this.UpperLevel.TabIndex = 4;
            this.UpperLevel.Text = "00";
            this.UpperLevel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // flowLayoutPanel1
            // 
            this.flowLayoutPanel1.AutoScroll = true;
            this.flowLayoutPanel1.Location = new System.Drawing.Point(20, 305);
            this.flowLayoutPanel1.Name = "flowLayoutPanel1";
            this.flowLayoutPanel1.Size = new System.Drawing.Size(426, 266);
            this.flowLayoutPanel1.TabIndex = 5;
            this.flowLayoutPanel1.Paint += new System.Windows.Forms.PaintEventHandler(this.flowLayoutPanel1_Paint);
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
            // flowLayoutPanel2
            // 
            this.flowLayoutPanel2.AutoScroll = true;
            this.flowLayoutPanel2.Location = new System.Drawing.Point(20, 577);
            this.flowLayoutPanel2.Name = "flowLayoutPanel2";
            this.flowLayoutPanel2.Size = new System.Drawing.Size(426, 86);
            this.flowLayoutPanel2.TabIndex = 8;
            // 
            // elevatorPointers1
            // 
            this.elevatorPointers1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(27)))), ((int)(((byte)(28)))), ((int)(((byte)(48)))));
            this.elevatorPointers1.Direction = false;
            this.elevatorPointers1.Location = new System.Drawing.Point(12, 33);
            this.elevatorPointers1.Name = "elevatorPointers1";
            this.elevatorPointers1.Size = new System.Drawing.Size(30, 225);
            this.elevatorPointers1.TabIndex = 9;
            // 
            // ElevatorViewer
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(27)))), ((int)(((byte)(28)))), ((int)(((byte)(48)))));
            this.ClientSize = new System.Drawing.Size(464, 719);
            this.Controls.Add(this.elevatorPointers1);
            this.Controls.Add(this.flowLayoutPanel2);
            this.Controls.Add(this.AddressVal);
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
        private System.Windows.Forms.Label AddressVal;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel2;
        private ElevatorPointers elevatorPointers1;
    }
}
