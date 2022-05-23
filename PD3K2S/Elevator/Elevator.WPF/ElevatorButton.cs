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
    public partial class ElevatorButton : UserControl
    {
        public ElevatorButton()
        {
            InitializeComponent();
        }

        #region Properties


        private string _FloorNum;

        [Category("custom props")]
        public string FloorNum
        { 
            get { return _FloorNum; }
            set { _FloorNum = value; FloorNumber.Text = value; }
        
        }
        #endregion
    }
}
