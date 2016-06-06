using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebDongHo.DbContext;

namespace WebDongHo.Models
{
    public class ChitietSPModel
    {
        public Sanpham Sanpham { get; set; }
        public List<Sanpham> Noibats { get; set; }
        public List<Nhanhieu> Nhanhieux { get; set; }
        public List<Loaiday> Loaidays { get; set; }
        public List<Nangluong> Nangluongs { get; set; }
        public List<Loaivo> Loaivoes { get; set; }
    }
}