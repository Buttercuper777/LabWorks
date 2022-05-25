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

        public async void StartChecker(ElevatorViewer ev, Employee prev)
        {
            while (true)
            {
                try
                {
                    moveContoller _moveController = new moveContoller();

                    var resJsonString = await RestHelper.GetById(SaverLiftId.LiftId);
                    Employee actState = JsonConvert.DeserializeObject<Employee>(resJsonString);

                    if (actState.ActFloor != prev.ActFloor)
                    {
                        ev.AnimActions(prev.ActFloor, actState.ActFloor);

                        if (prev.ActFloor < actState.ActFloor)
                        {
                            prev.ActFloor = await _moveController.LiftUp(prev.ActFloor);
                            ev.LevelSwitcher(prev.ActFloor);

                        }
                        if (prev.ActFloor > actState.ActFloor)
                        {
                            prev.ActFloor = await _moveController.liftDown(prev.ActFloor);
                            ev.LevelSwitcher(prev.ActFloor);
                        }
                    }
                    else
                    {
                        ev.AnimActions(prev.ActFloor, actState.ActFloor);
                        Console.WriteLine("Scan...");
                    }
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
