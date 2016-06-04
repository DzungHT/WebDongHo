using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebDongHo.DbContext;

namespace WebDongHo.Models
{
    public class HomeModel
    {
        public List<Sanpham> lstNoibat { get; set; }
        public HomeModel()
        {
            lstNoibat = new List<Sanpham>();
        }
    }
}