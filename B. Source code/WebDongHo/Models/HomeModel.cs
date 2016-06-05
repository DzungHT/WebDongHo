using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebDongHo.DbContext;

namespace WebDongHo.Models
{
    public class HomeModel
    {
        public List<Sanpham> lstSP { get; set; }
        public HomeModel()
        {
            lstSP = new List<Sanpham>();
        }
    }
}