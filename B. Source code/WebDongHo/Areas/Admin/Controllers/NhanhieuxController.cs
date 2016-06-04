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
    public class NhanhieuxController : Controller
    {
        private MyDbContext db = new MyDbContext();

        // GET: Admin/Nhanhieux
        public ActionResult Index()
        {
            return View(db.Nhanhieux.ToList());
        }

        // GET: Admin/Nhanhieux/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Nhanhieu nhanhieu = db.Nhanhieux.Find(id);
            if (nhanhieu == null)
            {
                return HttpNotFound();
            }
            return View(nhanhieu);
        }

        // GET: Admin/Nhanhieux/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Nhanhieux/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "NhanhieuID,Ten,Thutu,Hienthi,IsDel")] Nhanhieu nhanhieu)
        {
            if (ModelState.IsValid)
            {
                db.Nhanhieux.Add(nhanhieu);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(nhanhieu);
        }

        // GET: Admin/Nhanhieux/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Nhanhieu nhanhieu = db.Nhanhieux.Find(id);
            if (nhanhieu == null)
            {
                return HttpNotFound();
            }
            return View(nhanhieu);
        }

        // POST: Admin/Nhanhieux/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "NhanhieuID,Ten,Thutu,Hienthi,IsDel")] Nhanhieu nhanhieu)
        {
            if (ModelState.IsValid)
            {
                db.Entry(nhanhieu).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(nhanhieu);
        }

        // GET: Admin/Nhanhieux/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Nhanhieu nhanhieu = db.Nhanhieux.Find(id);
            if (nhanhieu == null)
            {
                return HttpNotFound();
            }
            return View(nhanhieu);
        }

        // POST: Admin/Nhanhieux/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Nhanhieu nhanhieu = db.Nhanhieux.Find(id);
            db.Nhanhieux.Remove(nhanhieu);
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
