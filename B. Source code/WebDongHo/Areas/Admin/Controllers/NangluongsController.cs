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
    public class NangluongsController : Controller
    {
        private MyDbContext db = new MyDbContext();

        // GET: Admin/Nangluongs
        public ActionResult Index()
        {
            return View(db.Nangluongs.ToList());
        }

        // GET: Admin/Nangluongs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Nangluong nangluong = db.Nangluongs.Find(id);
            if (nangluong == null)
            {
                return HttpNotFound();
            }
            return View(nangluong);
        }

        // GET: Admin/Nangluongs/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Nangluongs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "NangluongID,Ten,Thutu,Hienthi")] Nangluong nangluong)
        {
            if (ModelState.IsValid)
            {
                db.Nangluongs.Add(nangluong);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(nangluong);
        }

        // GET: Admin/Nangluongs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Nangluong nangluong = db.Nangluongs.Find(id);
            if (nangluong == null)
            {
                return HttpNotFound();
            }
            return View(nangluong);
        }

        // POST: Admin/Nangluongs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "NangluongID,Ten,Thutu,Hienthi")] Nangluong nangluong)
        {
            if (ModelState.IsValid)
            {
                db.Entry(nangluong).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(nangluong);
        }

        // GET: Admin/Nangluongs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Nangluong nangluong = db.Nangluongs.Find(id);
            if (nangluong == null)
            {
                return HttpNotFound();
            }
            return View(nangluong);
        }

        // POST: Admin/Nangluongs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Nangluong nangluong = db.Nangluongs.Find(id);
            db.Nangluongs.Remove(nangluong);
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
