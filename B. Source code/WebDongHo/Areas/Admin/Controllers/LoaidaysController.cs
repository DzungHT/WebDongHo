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
    public class LoaidaysController : Controller
    {
        private MyDbContext db = new MyDbContext();

        // GET: Admin/Loaidays
        public ActionResult Index()
        {
            return View(db.Loaidays.ToList());
        }

        // GET: Admin/Loaidays/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Loaiday loaiday = db.Loaidays.Find(id);
            if (loaiday == null)
            {
                return HttpNotFound();
            }
            return View(loaiday);
        }

        // GET: Admin/Loaidays/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Loaidays/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "LoaidayID,Ten,Thutu,Hienthi")] Loaiday loaiday)
        {
            if (ModelState.IsValid)
            {
                db.Loaidays.Add(loaiday);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(loaiday);
        }

        // GET: Admin/Loaidays/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Loaiday loaiday = db.Loaidays.Find(id);
            if (loaiday == null)
            {
                return HttpNotFound();
            }
            return View(loaiday);
        }

        // POST: Admin/Loaidays/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "LoaidayID,Ten,Thutu,Hienthi")] Loaiday loaiday)
        {
            if (ModelState.IsValid)
            {
                db.Entry(loaiday).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(loaiday);
        }

        // GET: Admin/Loaidays/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Loaiday loaiday = db.Loaidays.Find(id);
            if (loaiday == null)
            {
                return HttpNotFound();
            }
            return View(loaiday);
        }

        // POST: Admin/Loaidays/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Loaiday loaiday = db.Loaidays.Find(id);
            db.Loaidays.Remove(loaiday);
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
