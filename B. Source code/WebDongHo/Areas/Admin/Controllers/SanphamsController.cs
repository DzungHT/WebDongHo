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
    public class SanphamsController : Controller
    {
        private MyDbContext db = new MyDbContext();
        List<string> Hinhanhs;

        // GET: Admin/Sanphams
        public ActionResult Index()
        {
            var sanphams = db.Sanphams.Include(s => s.Loaiday).Include(s => s.LoaiSP).Include(s => s.Loaivo).Include(s => s.Nangluong).Include(s => s.Nhanhieu);
            return View(sanphams.ToList());
        }

        // GET: Admin/Sanphams/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Sanpham sanpham = db.Sanphams.Find(id);
            if (sanpham == null)
            {
                return HttpNotFound();
            }
            return View(sanpham);
        }

        // GET: Admin/Sanphams/Create
        public ActionResult Create()
        {
            Session["Hinhanhs"] = new List<string>();
            ViewBag.LoaidayID = new SelectList(db.Loaidays, "LoaidayID", "Ten");
            ViewBag.LoaiSPID = new SelectList(db.LoaiSPs, "LoaiSPID", "Ten");
            ViewBag.LoaivoID = new SelectList(db.Loaivoes, "LoaivoID", "Ten");
            ViewBag.NangluongID = new SelectList(db.Nangluongs, "NangluongID", "Ten");
            ViewBag.NhanhieuID = new SelectList(db.Nhanhieux, "NhanhieuID", "Ten");
            return View();
        }

        // POST: Admin/Sanphams/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "SanphamID,Ten,Mota,Giagoc,Giaban,LoaiSPID,NhanhieuID,NangluongID,LoaidayID,LoaivoID,Soluong,Khuyenmai,IsNoibat,Hienthi,HienthiTrangChu")] Sanpham sanpham)
        {
            if (ModelState.IsValid)
            {
                db.Sanphams.Add(sanpham);
                Hinhanhs = Session["Hinhanhs"] as List<string>;
                Hinhanh h;
                Hinhanhs.ForEach(x =>
                {
                    h = new Hinhanh();
                    h.SanphamID = sanpham.SanphamID;
                    h.Url = x;
                    db.Hinhanhs.Add(h);
                });

                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.LoaidayID = new SelectList(db.Loaidays, "LoaidayID", "Ten", sanpham.LoaidayID);
            ViewBag.LoaiSPID = new SelectList(db.LoaiSPs, "LoaiSPID", "Ten", sanpham.LoaiSPID);
            ViewBag.LoaivoID = new SelectList(db.Loaivoes, "LoaivoID", "Ten", sanpham.LoaivoID);
            ViewBag.NangluongID = new SelectList(db.Nangluongs, "NangluongID", "Ten", sanpham.NangluongID);
            ViewBag.NhanhieuID = new SelectList(db.Nhanhieux, "NhanhieuID", "Ten", sanpham.NhanhieuID);
            return View(sanpham);
        }

        // GET: Admin/Sanphams/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Sanpham sanpham = db.Sanphams.Find(id);
            if (sanpham == null)
            {
                return HttpNotFound();
            }
            ViewBag.LoaidayID = new SelectList(db.Loaidays, "LoaidayID", "Ten", sanpham.LoaidayID);
            ViewBag.LoaiSPID = new SelectList(db.LoaiSPs, "LoaiSPID", "Ten", sanpham.LoaiSPID);
            ViewBag.LoaivoID = new SelectList(db.Loaivoes, "LoaivoID", "Ten", sanpham.LoaivoID);
            ViewBag.NangluongID = new SelectList(db.Nangluongs, "NangluongID", "Ten", sanpham.NangluongID);
            ViewBag.NhanhieuID = new SelectList(db.Nhanhieux, "NhanhieuID", "Ten", sanpham.NhanhieuID);
            return View(sanpham);
        }

        // POST: Admin/Sanphams/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "SanphamID,Ten,Mota,Giagoc,Giaban,LoaiSPID,NhanhieuID,NangluongID,LoaidayID,LoaivoID,Soluong,Khuyenmai,IsNoibat,Hienthi,HienthiTrangChu")] Sanpham sanpham)
        {
            if (ModelState.IsValid)
            {
                db.Entry(sanpham).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.LoaidayID = new SelectList(db.Loaidays, "LoaidayID", "Ten", sanpham.LoaidayID);
            ViewBag.LoaiSPID = new SelectList(db.LoaiSPs, "LoaiSPID", "Ten", sanpham.LoaiSPID);
            ViewBag.LoaivoID = new SelectList(db.Loaivoes, "LoaivoID", "Ten", sanpham.LoaivoID);
            ViewBag.NangluongID = new SelectList(db.Nangluongs, "NangluongID", "Ten", sanpham.NangluongID);
            ViewBag.NhanhieuID = new SelectList(db.Nhanhieux, "NhanhieuID", "Ten", sanpham.NhanhieuID);
            return View(sanpham);
        }

        // GET: Admin/Sanphams/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Sanpham sanpham = db.Sanphams.Find(id);
            if (sanpham == null)
            {
                return HttpNotFound();
            }
            return View(sanpham);
        }

        // POST: Admin/Sanphams/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Sanpham sanpham = db.Sanphams.Find(id);
            db.Sanphams.Remove(sanpham);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        [HttpPost]
        public ActionResult ThemAnh(string Url)
        {
            Hinhanhs = Session["Hinhanhs"] as List<string>;
            int pos = Hinhanhs.FindIndex(x => x.Equals(Url));
            if(pos == -1)
            {
                // Nếu url chưa có thì add vào list hinhanhs
                Hinhanhs.Add(Url);
            }
            // Còn có rồi thì thôi
            return PartialView("Anh",Hinhanhs);
        }

        [HttpPost]
        public ActionResult XoaAnh(int? index)
        {
            Hinhanhs = Session["Hinhanhs"] as List<string>;
            if (index < Hinhanhs.Count && index > -1)
            {
                // Nếu index nằm trong khoảng cho phép thì removeat index
                Hinhanhs.RemoveAt(index.Value);
                Session["Hinhanhs"] = Hinhanhs;
            }
            // Còn không thì thôi
            return PartialView("Anh",Hinhanhs);
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
