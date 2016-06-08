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
    public class HomeController : Controller
    {
        MyDbContext db = new MyDbContext();
        // GET: Home
        public ActionResult Index()
        {
            HomeModel data = new HomeModel();
            data.lstSP = db.Sanphams.Include(x => x.Hinhanhs).Where(x => x.Hienthi && x.HienthiTrangChu && x.LoaiSP.Hienthi && x.Nhanhieu.Hienthi && x.Soluong > 0).ToList();
            return View(data);
        }
    }
}