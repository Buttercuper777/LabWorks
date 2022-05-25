using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Elevator.WPF
{
    public partial class ElevatorPointers : UserControl
    {

        List<Panel> panels;
        Brush brush;

        public ElevatorPointers()
        {
            InitializeComponent();

            brush = new SolidBrush(Color.FromArgb(248, 188, 77));

            panels = new List<Panel>()
            {
                panel1, panel2, panel3, panel4
            };
            timer1.Start();


        }

        #region Properties

        private bool _direction;
  

        [Category("custom props")]
        public bool Direction
        {
            get { return _direction; }
            set { _direction = value; }

        }

        #endregion

        private void panel5_Paint(object sender, PaintEventArgs e)
        {

        }

        private void ElevatorPointers_Load(object sender, EventArgs e)
        {


        }

  

        private void panel3_Click(object sender, EventArgs e)
        {

            //var graphics = pictureBox1.CreateGraphics();

            //Func<string, Point> convert = (s) => new Point(int.Parse(s.Split(',')[0]), int.Parse(s.Split(',')[1]));

            //var point1 = convert((0).ToString());
            //var point2 = convert((13).ToString());
            //var point3 = convert((24).ToString());

            //graphics.DrawLines(new Pen(Color.Red, 3), new[] { point1, point2, point3, point1 });

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

            if(_direction)
                e.Graphics.FillPolygon(brush, new Point[] { new Point(0, 27), new Point(13, 10), new Point(27, 27) });
            else
                e.Graphics.FillPolygon(brush, new Point[] { new Point(0, 0), new Point(13, 17), new Point(27, 0) });
        }

        public void Clear()
        {
            foreach (var panel in panels)
            {
                panel.CreateGraphics().Clear(BackColor);
            }
        }


        private void timer1_Tick(object sender, EventArgs e)
        {
            if (_direction)
            {
                foreach (var panel in panels)
                {

                    if (panel.Location.Y < this.Location.Y)
                        panel.Location = new Point(0, this.Height);
                    else
                        panel.Location = new Point(0, panel.Location.Y - 5);
                }
            }
            else
            {
                foreach (var panel in panels)
                {
                    if (panel.Location.Y > this.Height)
                        panel.Location = new Point(0, this.Location.Y);
                    else
                        panel.Location = new Point(0, panel.Location.Y + 5);
                }
            }
        }
    }
}
