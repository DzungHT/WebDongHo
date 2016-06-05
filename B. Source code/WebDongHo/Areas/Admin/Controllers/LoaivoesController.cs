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
    public class LoaivoesController : Controller
    {
        private MyDbContext db = new MyDbContext();

        // GET: Admin/Loaivoes
        public ActionResult Index()
        {
            return View(db.Loaivoes.ToList());
        }

        // GET: Admin/Loaivoes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Loaivo loaivo = db.Loaivoes.Find(id);
            if (loaivo == null)
            {
                return HttpNotFound();
            }
            return View(loaivo);
        }

        // GET: Admin/Loaivoes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Loaivoes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "LoaivoID,Ten,Thutu,Hienthi,IsDel")] Loaivo loaivo)
        {
            if (ModelState.IsValid)
            {
                db.Loaivoes.Add(loaivo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(loaivo);
        }

        // GET: Admin/Loaivoes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Loaivo loaivo = db.Loaivoes.Find(id);
            if (loaivo == null)
            {
                return HttpNotFound();
            }
            return View(loaivo);
        }

        // POST: Admin/Loaivoes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "LoaivoID,Ten,Thutu,Hienthi,IsDel")] Loaivo loaivo)
        {
            if (ModelState.IsValid)
            {
                db.Entry(loaivo).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(loaivo);
        }

        // GET: Admin/Loaivoes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Loaivo loaivo = db.Loaivoes.Find(id);
            if (loaivo == null)
            {
                return HttpNotFound();
            }
            return View(loaivo);
        }

        // POST: Admin/Loaivoes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Loaivo loaivo = db.Loaivoes.Find(id);
            db.Loaivoes.Remove(loaivo);
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
