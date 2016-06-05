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
        public ActionResult Index()
        {
            var hinhanhs = db.Hinhanhs.Include(h => h.Sanpham);
            return View(hinhanhs.ToList());
        }

        // GET: Admin/Hinhanhs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Hinhanh hinhanh = db.Hinhanhs.Find(id);
            if (hinhanh == null)
            {
                return HttpNotFound();
            }
            return View(hinhanh);
        }

        // GET: Admin/Hinhanhs/Create
        public ActionResult Create()
        {
            ViewBag.SanphamID = new SelectList(db.Sanphams, "SanphamID", "Ten");
            return View();
        }

        // POST: Admin/Hinhanhs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "HinhanhID,SanphamID,Url,Hienthi")] Hinhanh hinhanh)
        {
            if (ModelState.IsValid)
            {
                db.Hinhanhs.Add(hinhanh);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.SanphamID = new SelectList(db.Sanphams, "SanphamID", "Ten", hinhanh.SanphamID);
            return View(hinhanh);
        }

        // GET: Admin/Hinhanhs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Hinhanh hinhanh = db.Hinhanhs.Find(id);
            if (hinhanh == null)
            {
                return HttpNotFound();
            }
            ViewBag.SanphamID = new SelectList(db.Sanphams, "SanphamID", "Ten", hinhanh.SanphamID);
            return View(hinhanh);
        }

        // POST: Admin/Hinhanhs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "HinhanhID,SanphamID,Url,Hienthi")] Hinhanh hinhanh)
        {
            if (ModelState.IsValid)
            {
                db.Entry(hinhanh).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.SanphamID = new SelectList(db.Sanphams, "SanphamID", "Ten", hinhanh.SanphamID);
            return View(hinhanh);
        }

        // GET: Admin/Hinhanhs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Hinhanh hinhanh = db.Hinhanhs.Find(id);
            if (hinhanh == null)
            {
                return HttpNotFound();
            }
            return View(hinhanh);
        }

        // POST: Admin/Hinhanhs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Hinhanh hinhanh = db.Hinhanhs.Find(id);
            db.Hinhanhs.Remove(hinhanh);
            db.SaveChanges();
            return RedirectToAction("Index");
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
