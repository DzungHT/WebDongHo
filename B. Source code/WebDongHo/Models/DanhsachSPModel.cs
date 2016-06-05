using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebDongHo.DbContext;

namespace WebDongHo.Models
{
    public class DanhsachSPModel
    {
        public List<Sanpham> Sanphams { get; set; }
        public List<Nhanhieu> Nhanhieux { get; set; }
        public List<Loaiday> Loaidays { get; set; }
        public List<Nangluong> Nangluongs { get; set; }
        public List<Loaivo> Loaivoes { get; set; }
    }
}