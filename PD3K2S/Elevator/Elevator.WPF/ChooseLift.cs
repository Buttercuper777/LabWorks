using Elevator.WPF.Shared;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Elevator.WPF
{
    public partial class ChooseLift : Form
    {


        public ChooseLift()
        {
            InitializeComponent();

        }

        private async void ChooseLift_Load(object sender, EventArgs e)
        {

            Form newForm = new Form();
            newForm.FormBorderStyle= FormBorderStyle.None;
            newForm.StartPosition = FormStartPosition.CenterScreen;
            newForm.Size = new System.Drawing.Size(230, 150);

            Label lbl = new Label(); // Новый экземпляр
            lbl.Font = new Font("Arial", 20);
            lbl.AutoSize = false;
            lbl.TextAlign = ContentAlignment.MiddleCenter;
            lbl.Dock = DockStyle.Fill;
            lbl.Text = "Загрузка...";
            newForm.Controls.Add(lbl); // выбор контейнера

            newForm.Show();


            try
            {
                string resJsonString = await RestHelper.GetAll();
                var dataTable = JsonConvert.DeserializeObject<List<Employee>>(resJsonString);
                dataGridView1.DataSource = dataTable;
                newForm.Close();
            }
            catch (Exception ex)
            {
                newForm.Close();
                MessageBox.Show("Проверьте соединение с сервером:\n " + ex.Message, "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
                Application.Exit();
            }


        }

        private void button1_Click(object sender, EventArgs e)
        {


            string session_key = "";

            int rows_selected_num = dataGridView1.SelectedRows.Count;
            if(rows_selected_num == 1)
            {
                session_key = dataGridView1.CurrentRow.Cells[0].Value.ToString();
     
                SaverLiftId.LiftId = session_key;
                this.Close();

            }
            else
            {
                MessageBox.Show("Выберите 1 вариант из списка", "Select Columns");
            }

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
