using Elevator.WPF.Shared;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Elevator.WPF
{
    public partial class ElevatorViewer : Form
    {
        Employee ElevatorData = new Employee();


        public void AnimActions(int actlevel, int prevlevel)
        {
            if (actlevel < prevlevel)
            {
                elevatorPointers1.Visible = true;
                elevatorPointers1.Direction = true;
                ElevCave.Image = Image.FromFile("Images/elev-sectors-animation-3.gif");
                ElevCave.Enabled = true;
            }
            else if (actlevel == prevlevel)
            {
                elevatorPointers1.Visible = false;
                elevatorPointers1.Clear();
                ElevCave.Enabled = false;
            }
            else
            {
                elevatorPointers1.Visible = true;
                elevatorPointers1.Direction = false;
                ElevCave.Image = Image.FromFile("Images/elev-anim-to-down.gif");
                ElevCave.Enabled = true;
            }
        }

        public void LevelSwitcher(int actlevel)
        {

            if (actlevel < 10 && actlevel > 0)                                      
                LevelNumLabel.Text = "0" + actlevel.ToString();
            else
                LevelNumLabel.Text = actlevel.ToString();


            if(actlevel > 0 && actlevel < ElevatorData.NumOfFloors)
            {
                if(actlevel + 1 >= 10)
                {
                    UpperLevel.Visible = true;
                    UpperLevel.Text = (actlevel + 1).ToString();
                }
                
                else
                    UpperLevel.Text = "0" + (actlevel + 1).ToString();
            }
            else if(actlevel > 0 && actlevel == ElevatorData.NumOfFloors)
            {
                UpperLevel.Visible = false;
            }

            //else if (actlevel - 1 == 0 && actlevel == ElevatorData.NumOfFloors)
            //{
            //    UpperLevel.Visible = false;
            //}

            if (actlevel - 1 == 0 && ElevatorData.NumOfBasements <= 0) {
                DownLevel.Visible = false;
            }

            else if(actlevel - 1 == 0 && ElevatorData.NumOfBasements > 0)
            {
                DownLevel.Visible = true;
                DownLevel.Text = "-1";
            }
            else if (!(actlevel - 1 == 0) && ElevatorData.NumOfBasements > 0)
            {
                DownLevel.Visible = true;
                if(actlevel - 1 >= 10)
                    DownLevel.Text = (actlevel - 1).ToString();
                
                else
                    DownLevel.Text = "0" + (actlevel - 1).ToString();

                
            }


            if (actlevel < 0)
            {
                if((actlevel - 1) * (-1) <= ElevatorData.NumOfBasements)
                {
                    DownLevel.Visible = true;
                    DownLevel.Text = (actlevel - 1).ToString();
                }
                else
                    DownLevel.Visible = false;

                if (actlevel + 1 == 0)
                {
                    UpperLevel.Visible = true;
                    UpperLevel.Text = "01";
                }
                else
                {
                    UpperLevel.Visible = true;
                    UpperLevel.Text = (actlevel + 1).ToString();
                }

            }
            

            //if (ElevatorData.ActFloor == 1 && ElevatorData.NumOfBasements == 0)
            //    DownLevel.Visible = false;
            //else if (ElevatorData.ActFloor == 1 && ElevatorData.NumOfBasements > 0)
            //{
            //    DownLevel.Visible = true;
            //    DownLevel.Text = "-1";
            //}

        }

        private void CheckerActFloor_t()
        {

            ActFloorChecker actFloorChecker = new ActFloorChecker();
            Thread CheckerThread = new Thread(() =>
                {
                    Invoke((MethodInvoker)(() => 
                        {
                            actFloorChecker.StartChecker(this ,ElevatorData);
                        }
                    )); 
                }
            );

            CheckerThread.Priority = ThreadPriority.BelowNormal;
            CheckerThread.Name = "CheckerActFloor_t";

            CheckerThread.Start();

        }

        private void ModelRebuilder(string model)
        {
            ElevatorData = JsonConvert.DeserializeObject<Employee>(model);
            
        }

        private void LevelsShower(int floors_num, bool isBasement)
        {
            ElevatorButton[] LevelsList = new ElevatorButton[floors_num];

            for (int i = 0; i < LevelsList.Length; i++)
            {
                LevelsList[i] = new ElevatorButton(ElevatorData.Id);
                if (i+1 >= 10)
                {
                    if (isBasement)
                    {
                        LevelsList[i].FloorNum = ((i + 1) * (-1)).ToString();
                        LevelsList[i].GoToFloor = ((i + 1) * (-1));
                    }
                    else
                    {
                        LevelsList[i].FloorNum = ((i + 1)).ToString();
                        LevelsList[i].GoToFloor = ((i + 1));
                    }
                }

                else
                {
                    if (isBasement)
                    {
                        LevelsList[i].FloorNum = ((i + 1) * (-1)).ToString();
                        LevelsList[i].GoToFloor = ((i + 1) * (-1));
                    }
                    else
                    {
                        LevelsList[i].FloorNum = "0" + (i + 1).ToString();
                        LevelsList[i].GoToFloor = ((i + 1));
                    }
                }

                if(!isBasement)
                    flowLayoutPanel1.Controls.Add(LevelsList[i]);
                else
                    flowLayoutPanel2.Controls.Add(LevelsList[i]);

            }
        }

        public ElevatorViewer()
        {
            InitializeComponent();
        }


        private async void ElevatorViewer_Load(object sender, EventArgs e)
        {
            Form LoadWindow = new Form();
            LoadWindow.FormBorderStyle= FormBorderStyle.None;
            LoadWindow.StartPosition = FormStartPosition.CenterScreen;
            LoadWindow.Size = new System.Drawing.Size(230, 150);

            Label lbl = new Label(); 
            lbl.Font = new Font("Arial", 20);
            lbl.AutoSize = false;
            lbl.TextAlign = ContentAlignment.MiddleCenter;
            lbl.Dock = DockStyle.Fill;
            lbl.Text = "Загрузка...";
            LoadWindow.Controls.Add(lbl); 

            LoadWindow.Show();


            try
            {
 
                if (SaverLiftId.LiftId != null)
                { 
                    var resJsonString = await RestHelper.GetById(SaverLiftId.LiftId);
                    //MessageBox.Show(emp.ToString(), "Fetch", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    if (resJsonString != null)
                    {
                        ModelRebuilder(resJsonString);
                    }
                    else
                    {
                        MessageBox.Show("Объект с указанным ключем не найден", "Онибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        Application.Exit();
                    }
                    LoadWindow.Close();
                }
                else
                {
                    MessageBox.Show("Ошибка в получении ключа лифта", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    Application.Exit();
                }


                if (ElevatorData.ActFloor > ElevatorData.NumOfFloors)
                {
                    var editfloor = await RestHelper.EditFloor(ElevatorData.Id.ToString(), 1);
                    ModelRebuilder(editfloor);
                }
                else if((ElevatorData.ActFloor) < ElevatorData.NumOfBasements * (-1))
                {
                    var editfloor = await RestHelper.EditFloor(ElevatorData.Id.ToString(), 1);
                    ModelRebuilder(editfloor);
                }


                AddressVal.Text = ElevatorData.Adress.ToString();                   
                LevelSwitcher(ElevatorData.ActFloor);

                LevelsShower(ElevatorData.NumOfFloors, false);
                if(ElevatorData.NumOfBasements > 0)
                    LevelsShower(ElevatorData.NumOfBasements, true);


                //elevatorPointers1.Vis = false;
                //elevatorPointers1.Direction = true;

                CheckerActFloor_t();

            }
            catch (Exception ex)
            {
                LoadWindow.Close();
                MessageBox.Show("Проверьте соединение с сервером:\n " + ex.Message, "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
                Application.Exit();
            }
        }

        private void flowLayoutPanel1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
