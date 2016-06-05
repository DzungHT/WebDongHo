using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebDongHo.DbContext;

namespace WebDongHo.Models
{
    public class MenuModel
    {
        public List<LoaiSP> LoaiSPs { get; set; }
        public List<Nhanhieu> Nhanhieus { get; set; }
        public List<Nangluong> Nangluongs { get; set; }
        public List<Loaiday> Loaidays { get; set; }
        public List<Loaivo> Loaivos { get; set; }
        public MenuModel()
        {
            MyDbContext db = new MyDbContext();
            try
            {
                Nhanhieus = db.Nhanhieux.SqlQuery("Nhanhieu_GetForMenu").ToList();
                Nangluongs = db.Nangluongs.SqlQuery("Nangluong_GetForMenu").ToList();
                Loaidays = db.Loaidays.SqlQuery("Loaiday_GetForMenu").ToList();
                Loaivos = db.Loaivoes.SqlQuery("Loaivo_GetForMenu").ToList();
                LoaiSPs = db.LoaiSPs.SqlQuery("LoaiSP_GetForMenu").ToList();
            }
            catch (Exception)
            {
                Nhanhieus = new List<Nhanhieu>();
                Nangluongs = new List<Nangluong>();
                Loaidays = new List<Loaiday>();
                Loaivos = new List<Loaivo>();
                LoaiSPs = new List<LoaiSP>();
            }


        }

    }
}