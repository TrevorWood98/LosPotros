using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LosPotrosWebsite
{
    public class Product
    {
        //These are the members of the product class
        //It is the attributes we want to store about your products.
        public string ProductID { get; set; }
        public string ProductName { get; set; }
        public string ShortDesc { get; set; }
        public decimal UnitPrice { get; set; }
        public string ImageFile { get; set; }

        //add other attributes that are important color, size

    }
}