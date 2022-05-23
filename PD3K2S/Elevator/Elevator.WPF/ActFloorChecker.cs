using Elevator.WPF.Shared;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Elevator.MoveController;

namespace Elevator.WPF
{
    class ActFloorChecker
    {
        public int levelNow;

        public async void StartChecker()
        {
            while (true)
            {
                Thread thread = Thread.CurrentThread;
                moveContoller _moveController = new moveContoller();

                var resJsonString = await RestHelper.GetById(SaverLiftId.LiftId);
                Employee actState = JsonConvert.DeserializeObject<Employee>(resJsonString);

                if(actState.ActFloor != LocalFloor.localFloor)
                {

                    Console.WriteLine("Chenged: " + actState.ActFloor.ToString());
                    if (LocalFloor.localFloor < actState.ActFloor)
                    {
                        LocalFloor.localFloor = await _moveController.LiftUp(LocalFloor.localFloor);
                        levelNow = LocalFloor.localFloor;
                    }
                    if (LocalFloor.localFloor > actState.ActFloor)
                    {
                        LocalFloor.localFloor =  _moveController.liftDown();
                    }
                }
                else
                    Console.WriteLine("Scan...");


                Thread.Sleep(1000);
            }
        }

        public int actLevelNow()
        {
            return levelNow;
        }
    }
}
