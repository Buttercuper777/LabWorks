using System;
using System.Threading.Tasks;

namespace Elevator.MoveController
{
    public class moveContoller
    {
        public async Task<int> LiftUp(int actLevel) {

            await Task.Delay(1000);

            if (actLevel + 1 == 0)
                return actLevel + 2;
            else
                return actLevel + 1;

        }

        public async Task<int> liftDown(int actLevel)
        {
            await Task.Delay(1000);

            if (actLevel - 1 == 0)
                return actLevel - 2;
            else
                return actLevel - 1;
        }
    }
}
