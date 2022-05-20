using System;

namespace Elevator.API.Models
{
    public class Lift
    {
        public Guid Id { get; set; }
        public int NumOfFloors { get; set; }
        public int NumOfBasements { get; set; }
        public int ActFloor { get; set; }
        public string Adress { get; set; }

    }
}
