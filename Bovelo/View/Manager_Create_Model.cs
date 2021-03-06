﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.VisualBasic;
using System.IO;

namespace Bovelo
{
    public partial class Manager_Create_Model : Form
    {
        private User user;
        private App app = new App();
        internal Manager_Create_Model(User user)
        {
            this.user = user;
            InitializeComponent();
            app.SetBikeModelList();
            app.SetBikePartList();
        }

        private void button7_Click(object sender, EventArgs e)//menu
        {
            this.Hide(); //hides the current form
            Manager_MainHome mmh = new Manager_MainHome(user);// maybe send the userType with it
            mmh.FormClosed += (s, args) => this.Close(); // close the login Form
            mmh.Show();
        }     

        private void button2_Click(object sender, EventArgs e)//Create a model
        {
            string type = textBox1.Text;
            var colors = checkedListBox1.CheckedItems;
            var sizes = checkedListBox2.CheckedItems;
            if (type == string.Empty)
            {
                string message = "You need to enter a Type";
                MessageBox.Show(message, "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                if (colors.Count != 0 && sizes.Count != 0)
                {
                    foreach (var color in colors)
                    {
                        foreach (var size in sizes)
                        {
                            Manager.SetNewBikeModel(type, Int32.Parse(size.ToString()), color.ToString());
                        }
                    }
                    string message = type + " has been created ";
                    MessageBox.Show(message, "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    textBox1.Clear();
                    //checkedListBox1.ClearSelected();
                    bool state = false;
                    for (int i = 0; i < checkedListBox1.Items.Count; i++)
                    {
                        checkedListBox1.SetItemCheckState(i, (state ? CheckState.Checked : CheckState.Unchecked));
                    }
                    for (int i = 0; i < checkedListBox2.Items.Count; i++)
                    {
                        checkedListBox2.SetItemCheckState(i, (state ? CheckState.Checked : CheckState.Unchecked));
                    }
                }
            }
            reloadPage();

        }

        private void button8_Click(object sender, EventArgs e)//create BikePart
        {
            string name = textBox2.Text;
            string location = textBox4.Text;
            var colors = checkedListBox4.CheckedItems;
            var sizes = checkedListBox3.CheckedItems;
            int price;
            if (textBox3.Text != "")
            {
                price = Int32.Parse(textBox3.Text);
            }
            else
            {
                string test = Interaction.InputBox("Please insert a correct price : ", "Price");
                price = Int32.Parse(test);
            }
            if (colors.Count != 0 && sizes.Count != 0)
            {
                foreach (var color in colors)
                {
                    foreach (var size in sizes)
                    {
                        Manager.SetNewBikePart(name,location, price,Int32.Parse(size.ToString()), color.ToString());
                        reloadPage();
                    }
                }
            }
            else if (colors.Count != 0 && sizes.Count == 0)
            {
                foreach (var color in colors)
                {
                    Manager.SetNewBikePart(name, location, price, 0, color.ToString());
                    reloadPage();
                }
            }
            else if (colors.Count == 0 && sizes.Count != 0)
            {
                foreach (var size in sizes)
                {
                    Manager.SetNewBikePart(name, location, price,Int32.Parse(size.ToString()));
                    reloadPage();
                }
            }
            else
            {
                Manager.SetNewBikePart(name, location, price);
                reloadPage();
            }

        }

        private void button5_Click(object sender, EventArgs e)//Load bikeModels
        {
            dataGridView1.Rows.Clear();
            var models = app.bikeModels;
            int i= 0;
            List<int> idModels = new List<int>();
            foreach(var bike in models)
            {
                string parts = "";
                foreach (var part in bike.bikeParts)
                {
                    parts += part.part_Id + " | " + part.name + " | " + part.location + " \n";
                }
                int id = bike.idBikeModel;
                string type = bike.type;
                string color = bike.color;
                int size = bike.size;
                dataGridView1.Rows.Add();
                dataGridView1.Rows[i].Cells[0].Value = id;
                dataGridView1.Rows[i].Cells[1].Value = type;
                dataGridView1.Rows[i].Cells[2].Value = color;
                dataGridView1.Rows[i].Cells[3].Value = size;
                dataGridView1.Rows[i].Cells[4].ToolTipText = parts;
                dataGridView1.Rows[i].Cells[4].Value = "Click to see";
                i++;
                idModels.Add(id);
            }
            comboBox1.DataSource = idModels;
        }

        private void button6_Click(object sender, EventArgs e)//Link a model to a bike
        {
            List<int> partsToLink = new List<int>();
            int idModel;
            if (comboBox1.Text != "")
            {
                idModel = Int32.Parse(comboBox1.Text);

                foreach(DataGridViewRow row in dataGridView2.Rows)
                {
                    int qty = Int32.Parse(row.Cells[4].Value.ToString());
                    if (qty != 0)
                    {
                        for(int j = 0; j<qty; j++)
                        {
                            partsToLink.Add(Int32.Parse(row.Cells[0].Value.ToString()));
                        }
                        
                        row.Cells[4].Value = "0";
                    }
                }
                DialogResult result = MessageBox.Show("Are you sure you want to add this part to this bike?", "Confirmation", MessageBoxButtons.YesNo);
                if (result == DialogResult.Yes)
                {
                    Manager.SetLinkBikePartsToBikeModel(idModel, partsToLink);
                    reloadPage();
                }
            }
        }

        private void button9_Click(object sender, EventArgs e)//Load bikeParts
        {
            dataGridView2.Rows.Clear();
            app.SetBikePartList();
            var parts = app.bikePartList;
            int i = 0;
            int idModel;
            BikeModel model = new BikeModel(null, null, 0);
            if (comboBox1.Text != "")
            {
                idModel = Int32.Parse(comboBox1.Text);
                model = app.bikeModels.FirstOrDefault(x => x.idBikeModel == idModel);
            }
            
            
            foreach (var part in parts)
            {
                int id = part.part_Id;
                int price = part.price;
                string name = part.name;
                dataGridView2.Rows.Add();
                dataGridView2.Rows[i].Cells[0].Value = id;
                dataGridView2.Rows[i].Cells[1].Value = name;
                dataGridView2.Rows[i].Cells[2].Value = price;
                if (model.bikeParts != null)
                {
                    dataGridView2.Rows[i].Cells[3].Value = model.bikeParts.Count(x => x.part_Id == id).ToString();
                }
                else
                {
                    dataGridView2.Rows[i].Cells[3].Value = "0";
                }
                dataGridView2.Rows[i].Cells[4].Value = "0";

                i++;
            }
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            string partsToShow = dataGridView1.Rows[e.RowIndex].Cells[4].ToolTipText.ToString();
            MessageBox.Show(partsToShow);
        }

        private void reloadPage()
        {
            this.Hide(); //hides the current form                    
            Manager_Create_Model mpc = new Manager_Create_Model(user);
            mpc.FormClosed += (s, args) => this.Close();
            mpc.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string wanted_path = Path.GetDirectoryName(Path.GetDirectoryName(Directory.GetCurrentDirectory())) + @"\View\Pictures";
            string new_path = wanted_path + @"\" + textBox1.Text.ToString();
            if (textBox1.Text.ToString() == string.Empty)
            {
                MessageBox.Show("Please insert a name first!");
            }
            else
            {
                Manager.AddNewFolder(new_path);
                System.Diagnostics.Process.Start(new_path);
            }
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
