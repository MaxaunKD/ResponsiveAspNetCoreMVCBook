using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BasicModel.Models
{
    public class Book
    {
        public string ISBN { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public int Price { get; set; }
        public string PicUrl { get; set; } 
    }
}
