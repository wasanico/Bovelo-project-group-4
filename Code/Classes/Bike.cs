namespace Bovelo
{
    class Bike
    {
        
        public int TotalTime = 0;
        public int TotalPrice = 0;
        public bool  isBuilt = false;
        
        private string _BikeType = " ";
        private string _BikeColor = " ";
        private int _BikeSize = 0;  

        //private BikePart[] Parts = new BikePart[]{};
     
        public string Type{ get => _Type; set => _Type=value;}
        public string Color{ get => _Color; set => _Color=value;}
        public int Size{ get => _Size; set => _Size =value;}

        public Bike(string Type,string Color,int Size)
        {
            _Type=Type;
            _Color=Color;
            _Size=Size;
        }

        

    }
}