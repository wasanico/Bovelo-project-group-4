﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Globalization;

namespace Bovelo
{
    public partial class Manager_Make_Planning : Form
    {
        private App newApp = new App();
        private User user = new User("Manager", false, false, false);
        private int maxHoursPerWeek;
        private string message;
        private bool updateButton = false;
        internal Manager_Make_Planning(User currentUser)
        {
            this.user = currentUser;
            InitializeComponent();
            newApp.SetBikePartList();
            newApp.SetBikeModelList();
            newApp.SetUserList();
            maxHoursPerWeek = newApp.GetMaxWorkingTimePerWeek();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {         
            if (dataGridView1.CurrentCell.Value.ToString() == "Modify")
            {
                weekToModify.Text = dataGridView1.Rows[e.RowIndex].Cells[8].Value.ToString();
                idBike.Text = dataGridView1.Rows[e.RowIndex].Cells[2].Value.ToString();   
            }
            if (dataGridView1.CurrentCell.Value.ToString() == "Delete")
            {
                int id = Int32.Parse(dataGridView1.Rows[e.RowIndex].Cells[2].Value.ToString());
                string week = dataGridView1.Rows[e.RowIndex].Cells[8].Value.ToString();
                Manager.DeletePlanifiedBike(id,week);
                message = "The bike number " + id + " has been delted from schedule ";
                MessageBox.Show(message, "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                dataGridView2.Rows.Clear();
                Manager_Make_Planning_Load(sender, e);
            }
        }

        private void computeTime(TimeSpan totalTime)
        {
            double minutes = totalTime.TotalMinutes % 60;
            var hours = (int)((double)(totalTime.TotalHours));
            label12.Text = hours.ToString() + " hours and " + minutes.ToString() + " minutes";
            label14.Text = maxHoursPerWeek.ToString() + " hours ";
            if (totalTime.TotalMinutes >= maxHoursPerWeek * 60)
            {
                message = "You are above the recommended worktime for your number of Assemblers ";
                MessageBox.Show(message, "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }
        private void loadPlanifiedBikes()
        {
            int i = 0;
            int j = 0;
            int t = 0;
            dataGridView1.Rows.Clear();
            TimeSpan totalTime = new TimeSpan();
            string clientName1 = "";
            string previousOrder1 = "";

            foreach (var planifiedOrderDetails in Manager.GetPlanifiedBikes())
            {
                //Console.WriteLine("détails in manager plan : " + orderDetails.Count);
                Console.WriteLine(planifiedOrderDetails[0] + "|" + planifiedOrderDetails[1] + "|" + planifiedOrderDetails[2] + "|" + planifiedOrderDetails[3] + "|" + planifiedOrderDetails[4] + "|" + planifiedOrderDetails[5] + "|" + planifiedOrderDetails[6] + "|" + planifiedOrderDetails[7] + "|" + planifiedOrderDetails[8]);
                BikeModel model = newApp.bikeModels.FirstOrDefault(x => x.color == planifiedOrderDetails[3] && x.size == Int32.Parse(planifiedOrderDetails[2]) && x.type == planifiedOrderDetails[1]);//gets the specific model
                Bike newBike = new Bike(Int32.Parse(planifiedOrderDetails[0]), model);
                t += newBike.totalTime;
                if (updateButton == true && newWeekToAssign.Text != string.Empty)
                {
                    if (planifiedOrderDetails[7] == newWeekToAssign.Text.ToString() && planifiedOrderDetails[5] != "Closed")
                    {
                        dataGridView1.Rows.Add();
                        dataGridView1.Rows[j].Cells[0].Value = Manager.GetClientName(Int32.Parse(planifiedOrderDetails[6]));
                        dataGridView1.Rows[j].Cells[1].Value = planifiedOrderDetails[6];//Id Order 
                        dataGridView1.Rows[j].Cells[2].Value = planifiedOrderDetails[0];//id bike 
                        dataGridView1.Rows[j].Cells[3].Value = planifiedOrderDetails[1];//type 
                        dataGridView1.Rows[j].Cells[4].Value = planifiedOrderDetails[2];//size 
                        dataGridView1.Rows[j].Cells[5].Value = planifiedOrderDetails[3];//color 
                        dataGridView1.Rows[j].Cells[6].Value = newBike.totalTime.ToString();
                        dataGridView1.Rows[j].Cells[7].Value = planifiedOrderDetails[5];//status 
                        dataGridView1.Rows[j].Cells[8].Value = planifiedOrderDetails[7];//plannified week
                        j++;
                    }
                }
                else if (planifiedOrderDetails[7] == comboBox1.Text.ToString())
                {
                    if (planifiedOrderDetails[5] != "Closed")
                    {
                        dataGridView1.Rows.Add();
                        dataGridView1.Rows[i].Cells[1].Value = planifiedOrderDetails[6];//Id Order 
                        dataGridView1.Rows[i].Cells[2].Value = planifiedOrderDetails[0];//id bike 
                        dataGridView1.Rows[i].Cells[3].Value = planifiedOrderDetails[1];//type 
                        dataGridView1.Rows[i].Cells[4].Value = planifiedOrderDetails[2];//size 
                        dataGridView1.Rows[i].Cells[5].Value = planifiedOrderDetails[3];//color 
                        dataGridView1.Rows[i].Cells[6].Value = newBike.totalTime.ToString();
                        dataGridView1.Rows[i].Cells[7].Value = planifiedOrderDetails[5];//status 
                        dataGridView1.Rows[i].Cells[8].Value = planifiedOrderDetails[7];//plannified week
                        if (planifiedOrderDetails[7] == comboBox1.Text.ToString() && planifiedOrderDetails[6] != previousOrder1)
                        {
                            clientName1 = Manager.GetClientName(Int32.Parse(planifiedOrderDetails[6]));
                            previousOrder1 = planifiedOrderDetails[6];
                        }
                        
                        dataGridView1.Rows[i].Cells[0].Value = clientName1;//client 
                        TimeSpan toAdd = new TimeSpan(0, newBike.totalTime, 0);
                        totalTime += toAdd;
                        i++;
                    } 
                }
            }
            computeTime(totalTime);
        }

        private void Manager_Make_Planning_Load(object sender, EventArgs e)
        {
            int i = 0;
            int t = 0;            
            dataGridView2.Rows.Clear();
            //Console.WriteLine("détails in manager plan : " + newApp.getPlanifiedBikes().Count);
                        
            string clientName = "";
            string previousOrder = "";
            foreach (var nonPlanifiedOrderDetails in Manager.GetNonPlanifiedBikes())
            {
                BikeModel model = newApp.bikeModels.FirstOrDefault(x => x.color == nonPlanifiedOrderDetails[3] && x.size == Int32.Parse(nonPlanifiedOrderDetails[2]) && x.type == nonPlanifiedOrderDetails[1]);//gets the specific model
                Bike newBike = new Bike(Int32.Parse(nonPlanifiedOrderDetails[0]), model);
                t += newBike.totalTime;
                dataGridView2.Rows.Add();

                dataGridView2.Rows[i].Cells[1].Value = nonPlanifiedOrderDetails[6];//id order
                dataGridView2.Rows[i].Cells[2].Value = nonPlanifiedOrderDetails[0];//id bike
                dataGridView2.Rows[i].Cells[3].Value = nonPlanifiedOrderDetails[1];//type
                dataGridView2.Rows[i].Cells[4].Value = nonPlanifiedOrderDetails[2];//size
                dataGridView2.Rows[i].Cells[5].Value = nonPlanifiedOrderDetails[3];//color
                dataGridView2.Rows[i].Cells[6].Value = newBike.totalTime.ToString();// time
                
                if (nonPlanifiedOrderDetails[6] != previousOrder)
                {
                    clientName = Manager.GetClientName(Int32.Parse(nonPlanifiedOrderDetails[6]));
                    previousOrder = nonPlanifiedOrderDetails[6];
                }
                dataGridView2.Rows[i].Cells[0].Value = clientName;//client 
                i++;
            }
            labelTime.Text = t.ToString() + " / " + (120 * 60).ToString();
            
        }

        private void monthCalendar1_DateChanged(object sender, DateRangeEventArgs e)
        {
            monthCalendar1.MaxSelectionCount = 1;
            DateTime Day = monthCalendar1.SelectionStart;
            var a = CultureInfo.CurrentCulture;
            var datetimeformat = a.DateTimeFormat;
            var calendarWeek = a.Calendar.GetWeekOfYear(monthCalendar1.SelectionStart, datetimeformat.CalendarWeekRule, datetimeformat.FirstDayOfWeek);
            newWeekToAssign.Text =  calendarWeek.ToString();
            textBox1.Text =  calendarWeek.ToString();
            newWeekToAssign.Text = calendarWeek.ToString();
        }
        private void addPlanifiedBikesToDB(object sender, EventArgs e)
        {
            //dataGridView2.Rows.Clear();
            message = "Save changes ? ";
            DialogResult dialogResult = MessageBox.Show(message, "Warning", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (dialogResult == DialogResult.Yes)
            {
                string weekName = textBox1.Text;
                Manager.SetNewPlanning(user.planningCart, Int32.Parse(weekName));
                message = "Your changes has been saved ";
                MessageBox.Show(message, "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                comboBox1.DataSource = Manager.GetPlanifiedWeekName().Select(x => x[0]).ToList();
                Manager_Make_Planning_Load(sender, e);
                user.planningCart = new List<List<string>>();
            }
            else
            {
                message = "You have choosed to unsave your changes !";
                MessageBox.Show(message, "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }
        
        private void button7_Click(object sender, EventArgs e)
        {
            this.Hide();
            Manager_MainHome mmh = new Manager_MainHome(user);// create new window
            mmh.FormClosed += (s, args) => this.Close();
            mmh.Show();// Showing the Login window
        }

        private void button5_Click(object sender, EventArgs e)//update schedule
        {
            updateButton = true;
            if(newWeekToAssign.Text.ToString() == string.Empty )
            {
                message = "Choose a week id from the calendar !";
                MessageBox.Show(message, "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                int id = Int32.Parse(idBike.Text.ToString());
                string newWeek = newWeekToAssign.Text.ToString();
                string currentWeek = weekToModify.Text.ToString();
                Manager.UpdateSchedule(id, newWeek, currentWeek);
                comboBox1.DataSource = Manager.GetPlanifiedWeekName().Select(x => x[0]).ToList();
                dataGridView1.Rows.Clear();
                message = "Bike successfully modified";
                MessageBox.Show(message, "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            

            updateButton = false;
        }

        private void addToPlanifiedBikes(object sender, DataGridViewCellEventArgs e)
        {
            BikeModel model = newApp.bikeModels.FirstOrDefault(x => x.color == dataGridView2.Rows[e.RowIndex].Cells[5].Value.ToString() && x.size == Int32.Parse(dataGridView2.Rows[e.RowIndex].Cells[4].Value.ToString()) && x.type == dataGridView2.Rows[e.RowIndex].Cells[3].Value.ToString());//gets the specific model
            Bike bike = new Bike(Int32.Parse(dataGridView2.Rows[e.RowIndex].Cells[2].Value.ToString()), model);//Needs to be verified (id)
            user.AddToPlanningCart(bike, Int32.Parse(dataGridView2.Rows[e.RowIndex].Cells[2].Value.ToString()));
            // NEED TO MODIFY THE DATAGRIDVIEW AND THE NON PLANNIFIEDBIKES
            string weekName = textBox1.Text;
            if (weekName == string.Empty)
            {
                message = "Choose the week ID from the calendar ! ";
                MessageBox.Show(message, "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                dataGridView1.Rows.Add();
                List<string> reset = new List<string>();
                dataGridView1.Rows[dataGridView1.RowCount - 1].Cells[0].Value = dataGridView2.Rows[e.RowIndex].Cells[0].Value; //id bike 
                dataGridView1.Rows[dataGridView1.RowCount - 1].Cells[1].Value = dataGridView2.Rows[e.RowIndex].Cells[1].Value; //type
                dataGridView1.Rows[dataGridView1.RowCount - 1].Cells[2].Value = dataGridView2.Rows[e.RowIndex].Cells[2].Value;//size
                dataGridView1.Rows[dataGridView1.RowCount - 1].Cells[3].Value = dataGridView2.Rows[e.RowIndex].Cells[3].Value;//color
                dataGridView1.Rows[dataGridView1.RowCount - 1].Cells[4].Value = dataGridView2.Rows[e.RowIndex].Cells[4].Value;//status
                dataGridView1.Rows[dataGridView1.RowCount - 1].Cells[5].Value = dataGridView2.Rows[e.RowIndex].Cells[5].Value;
                dataGridView1.Rows[dataGridView1.RowCount - 1].Cells[6].Value = dataGridView2.Rows[e.RowIndex].Cells[6].Value;
                foreach (var nonPlanifiedOrderDetails in Manager.GetNonPlanifiedBikes())
                {
                    dataGridView1.Rows[dataGridView1.RowCount - 1].Cells[7].Value = nonPlanifiedOrderDetails[5];// status (new ...)state of building
                }
                dataGridView1.Rows[dataGridView1.RowCount - 1].Cells[8].Value = weekName;//plannified week
                dataGridView2.Rows.RemoveAt(dataGridView2.CurrentRow.Index);
            }
        }
        private void dataGridView2_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            addToPlanifiedBikes(sender, e);
        }
        private void loadWeeksOfWork(object sender, EventArgs e)
        {
            comboBox1.DataSource = Manager.GetPlanifiedWeekName().Select(x => x[0]).ToList();
        }
        private void button3_Click(object sender, EventArgs e)
        {
            if (comboBox1.Text == string.Empty)
            {
                message = "Choose a week ID from the list  ";
                loadWeeksOfWork(sender,e);
            }
            else
            {
                message = "Planified Bikes loaded successfully";
                loadPlanifiedBikes();
            }
            MessageBox.Show(message, "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label12_Click(object sender, EventArgs e)
        {

        }

        private void label11_Click(object sender, EventArgs e)
        {

        }

        private void load(object sender, EventArgs e)
        {

        }
        private void button2_Click(object sender, EventArgs e)
        {

        }

    }
}
