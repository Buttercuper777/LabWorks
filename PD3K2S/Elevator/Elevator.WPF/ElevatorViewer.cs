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
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Elevator.WPF
{
    public partial class ElevatorViewer : Form
    {
        Employee ElevatorData = new Employee();


        private void LevelSwitcher(int actlevel)
        {

            if (ElevatorData.ActFloor < 10 && ElevatorData.ActFloor > 0)                                      
                LevelNumLabel.Text = "0" + ElevatorData.ActFloor.ToString();
            else
                LevelNumLabel.Text = ElevatorData.ActFloor.ToString();


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

        private void ModelRebuilder(string model)
        {
            ElevatorData = JsonConvert.DeserializeObject<Employee>(model);
        }

        public ElevatorViewer()
        {
            InitializeComponent();
        }

        private void LevelNumLabel_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
           
        }

        private void userControl11_Load(object sender, EventArgs e)
        {

        }

        private async void ElevatorViewer_Load(object sender, EventArgs e)
        {
            Form LoadWindow = new Form();
            LoadWindow.FormBorderStyle= FormBorderStyle.None;
            LoadWindow.StartPosition = FormStartPosition.CenterScreen;
            LoadWindow.Size = new System.Drawing.Size(230, 150);

            Label lbl = new Label(); // Новый экземпляр
            lbl.Font = new Font("Arial", 20);
            lbl.AutoSize = false;
            lbl.TextAlign = ContentAlignment.MiddleCenter;
            lbl.Dock = DockStyle.Fill;
            lbl.Text = "Загрузка...";
            LoadWindow.Controls.Add(lbl); // выбор контейнера

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

                //var startFloor = await RestHelper.EditFloor(ElevatorData.Id.ToString(), 20);
                //ModelRebuilder(startFloor);

                if (ElevatorData.ActFloor > ElevatorData.NumOfFloors)
                {
                    var editfloor = await RestHelper.EditFloor(ElevatorData.Id.ToString(), 1);
                    ModelRebuilder(editfloor);
                }
                else if(Math.Abs(ElevatorData.ActFloor) > ElevatorData.NumOfBasements)
                {
                    var editfloor = await RestHelper.EditFloor(ElevatorData.Id.ToString(), 1);
                    ModelRebuilder(editfloor);
                }


                //MessageBox.Show(editfloor.ToString(), "Post", MessageBoxButtons.OK, MessageBoxIcon.Information);

                AddressVal.Text = ElevatorData.Adress.ToString();                   //Start Address
                LevelSwitcher(ElevatorData.ActFloor);




            }
            catch (Exception ex)
            {
                LoadWindow.Close();
                MessageBox.Show("Проверьте соединение с сервером:\n " + ex.Message, "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
                Application.Exit();
            }
        }
    }
}
