using Elevator.WPF.Shared;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Elevator.MoveController;
using System.Windows.Forms;

namespace Elevator.WPF
{
    class ActFloorChecker
    {

        public async void StartChecker(ElevatorViewer ev)
        {
            while (true)
            {
                try
                {
                    moveContoller _moveController = new moveContoller();

                    var resJsonString = await RestHelper.GetById(SaverLiftId.LiftId);
                    Employee actState = JsonConvert.DeserializeObject<Employee>(resJsonString);

                    if (actState.ActFloor != LocalFloor.localFloor)
                    {

                        if (LocalFloor.localFloor < actState.ActFloor)
                        {
                            LocalFloor.localFloor = await _moveController.LiftUp(LocalFloor.localFloor);
                            ev.LevelSwitcher(LocalFloor.localFloor);

                        }
                        if (LocalFloor.localFloor > actState.ActFloor)
                        {
                            LocalFloor.localFloor =  _moveController.liftDown();
                        }
                    }
                    else
                        Console.WriteLine("Scan...");
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString(), "", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    continue;
                }

                await Task.Delay(200);
            }
        }


    }
}
