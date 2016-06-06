using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebDongHo.DbContext;

namespace WebDongHo.Areas.Admin.Controllers
{
    public class HinhanhsController : Controller
    {
        private MyDbContext db = new MyDbContext();

        // GET: Admin/Hinhanhs
        public ActionResult Index(int id)
        {
            var hinhanhs = db.Hinhanhs.Include(x => x.Sanpham).Where(x => x.SanphamID == id).ToList();
            return PartialView(hinhanhs.ToList());
        }

        [HttpPost]
        public ActionResult Create([Bind(Include = "HinhanhID,SanphamID,Url,Hienthi")] Hinhanh hinhanh)
        {
            ViewBag.IsSuccess = false;
            if (ModelState.IsValid)
            {
                db.Hinhanhs.Add(hinhanh);
                db.SaveChanges();
                ViewBag.IsSuccess = true;
            }
            List<Hinhanh> lstHinhanh = db.Hinhanhs.Include(x => x.Sanpham).Where(x => x.SanphamID == hinhanh.SanphamID).ToList();
            return PartialView("Index", lstHinhanh);
        }
        
        // POST: Admin/Hinhanhs/Delete/5
        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            ViewBag.Deleted = false;
            Hinhanh hinhanh = db.Hinhanhs.Find(id);
            db.Hinhanhs.Remove(hinhanh);
            db.SaveChanges();
            ViewBag.Deleted = true;
            List<Hinhanh> lstHinhanh = db.Hinhanhs.Include(x => x.Sanpham).Where(x => x.SanphamID == hinhanh.SanphamID).ToList();
            return PartialView("Index", lstHinhanh);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
