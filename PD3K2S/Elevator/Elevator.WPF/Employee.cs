using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Elevator.WPF
{
    class Employee
    {
        public Guid Id { get; set; }

        public string Adress { get; set; }
        public int NumOfFloors { get; set; }
        public int NumOfBasements { get; set; }
        public int ActFloor { get; set; }
    }
}
