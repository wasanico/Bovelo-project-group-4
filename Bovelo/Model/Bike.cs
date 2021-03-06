using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;
using MySql.Data.MySqlClient;

namespace Bovelo
{
    class Bike 
    {
        public Dictionary<string, bool> state = new Dictionary<string, bool>() { { "New",true},{ "Active", false },{ "Closed", false } };
        public string color;
        public int size;
        public string type;
        public int price;
        public int totalTime;
        public int bikeId;  //I Used to swap stock
        public List<BikePart> bikeParts;
        private BikeModel _model;
        public string assembler;
        public string startBuildTime;
        public string endBuildTime;
        public Bike(int bikeId,BikeModel bikeModel) //ID OF THE BIKE NOT BIKEMODEL
        {
            this.bikeId = bikeId;
            _model = bikeModel;

            type = _model.type;
            color = _model.color;
            size = _model.size;
            price = _model.price;
            totalTime = _model.totalTime;
            bikeParts = _model.bikeParts;
            

        }
        public void SetNewState(string status)
        {
            state[GetCurrentState()] = false;// change the actual state to false
            if (status == "New" || status == "Active" || status == "Closed")
            {
                state[status] = true;
            }
            else { }//error
            /*if (assemblerName != "")
            {
                assembler = assemblerName;
            }*/
            
        }
        public string GetCurrentState()
        {
            var status = state.FirstOrDefault(x => x.Value == true).Key;
            return status;
        }
    }

}




