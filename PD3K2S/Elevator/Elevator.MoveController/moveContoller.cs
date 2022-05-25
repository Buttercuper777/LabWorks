using System;
using System.Threading.Tasks;

namespace Elevator.MoveController
{
    public class moveContoller
    {
        public async Task<int> LiftUp(int actLevel)
        {
            actLevel += 1;
            await Task.Delay(5000);
            return actLevel;
        }

        public int liftDown()
        {
            return -1;
        }
    }
}
