﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bovelo
{
    internal class ItemPart : Item
    {
        public BikePart part;
        public ItemPart(BikePart part, int quantity):base(quantity)
        {
            this.quantity = quantity;
            this.part = part;
            price = GetPrice();
        }
        public override int GetPrice()
        {
            return quantity * part.price;
        }
        public override void SetQuantity(int quantity)
        {           
            this.quantity = quantity;
            this.price = quantity * this.part.price;
        }
    }
}