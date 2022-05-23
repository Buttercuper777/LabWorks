namespace Elevator.WPF
{
    partial class ElevatorButton
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.panel1 = new System.Windows.Forms.Panel();
            this.FloorNumber = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(27)))), ((int)(((byte)(28)))), ((int)(((byte)(48)))));
            this.panel1.Controls.Add(this.FloorNumber);
            this.panel1.Cursor = System.Windows.Forms.Cursors.Hand;
            this.panel1.Location = new System.Drawing.Point(3, 3);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(72, 72);
            this.panel1.TabIndex = 0;
            // 
            // FloorNumber
            // 
            this.FloorNumber.Font = new System.Drawing.Font("Segoe UI", 20F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.FloorNumber.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(248)))), ((int)(((byte)(188)))), ((int)(((byte)(77)))));
            this.FloorNumber.Location = new System.Drawing.Point(0, 17);
            this.FloorNumber.Name = "FloorNumber";
            this.FloorNumber.Size = new System.Drawing.Size(75, 31);
            this.FloorNumber.TabIndex = 0;
            this.FloorNumber.Text = "00";
            this.FloorNumber.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // ElevatorButton
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(106)))), ((int)(((byte)(110)))), ((int)(((byte)(189)))));
            this.Controls.Add(this.panel1);
            this.Name = "ElevatorButton";
            this.Size = new System.Drawing.Size(78, 78);
            this.panel1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label FloorNumber;
    }
}
