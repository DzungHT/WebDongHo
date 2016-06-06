using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDongHo.DbContext;
using WebDongHo.Models;
using System.Data.Entity;

namespace WebDongHo.Controllers
{
    public class ChitietSPController : Controller
    {
        MyDbContext db = new MyDbContext();
        // GET: ChitietSP
        public ActionResult Index(int id)
        {
            ChitietSPModel data = new ChitietSPModel();
            data.Sanpham = db.Sanphams.Include(x => x.Hinhanhs).Where(x => x.SanphamID == id).ToList()[0];
            data.Loaidays = db.Loaidays.Where(x => x.Hienthi).ToList();
            data.Loaivoes = db.Loaivoes.Where(x => x.Hienthi).ToList();
            data.Nangluongs = db.Nangluongs.Where(x => x.Hienthi).ToList();
            data.Nhanhieux = db.Nhanhieux.Where(x => x.Hienthi).ToList();
            data.Noibats = db.Sanphams.SqlQuery("select top (3) * from Sanpham s where s.LoaiSPID = "+data.Sanpham.LoaiSPID.ToString()+" and s.Khuyenmai > 0 order by s.Khuyenmai DESC ").ToList();
            return View(data);
        }
    }
}