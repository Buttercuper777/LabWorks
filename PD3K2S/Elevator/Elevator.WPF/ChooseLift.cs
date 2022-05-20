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

        private void ChooseLift_Load(object sender, EventArgs e)
        {
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri("https://localhost:5001/api/elevator/");
            HttpResponseMessage response = client.GetAsync("allfields").Result;
            var emp = response.Content.ReadAsAsync<IEnumerable<Employee>>().Result;
            dataGridView1.DataSource = emp;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //`            MessageBox.Show(sb.ToString(), "Selected Columns");


            string session_key = "";

            int rows_selected_num = dataGridView1.SelectedRows.Count;
            if(rows_selected_num == 1)
            {
                session_key = dataGridView1.CurrentCell.ToString();
                MessageBox.Show(session_key, "Selected Columns");
            }
            else
            {
                MessageBox.Show("Выберите 1 вариант из списка", "Select Columns");
            }

        }
    }
}
