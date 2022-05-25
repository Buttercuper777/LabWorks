using Elevator.WPF.Shared;
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

        Guid elvKey = new Guid();

        public ElevatorButton(Guid key)
        {
            elvKey = key;
            InitializeComponent();
        }

        #region Properties


        private string _FloorNum;
        private int _GoToFloor;

        [Category("custom props")]
        public string FloorNum
        { 
            get { return _FloorNum; }
            set { _FloorNum = value; FloorNumber.Text = value; }
        
        }

        [Category("custom props")]
        public int GoToFloor
        {
            get { return _GoToFloor; }
            set { _GoToFloor = value; }

        }
        #endregion

        private void panel1_Click(object sender, EventArgs e)
        {
            RestHelper.EditFloor(elvKey.ToString(), _GoToFloor);
        }
    }
}
