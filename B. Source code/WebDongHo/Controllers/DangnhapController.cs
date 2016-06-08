using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDongHo.DbContext;
using WebDongHo.Helper;
using WebDongHo.Models;

namespace WebDongHo.Controllers
{
    public class DangnhapController : Controller
    {
        MyDbContext db = new MyDbContext();
        // GET: Dangnhap
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Index(DangnhapModel dm)
        {
            var query = db.Accounts.Where(x => x.Username.Equals(dm.Username) && x.Password.Equals(dm.Password) && x.Trangthai == 2 && x.Role == 3).ToList();
            if(query.Count == 1)
            {
                query[0].Password = string.Empty;
                UserSession.User = query[0];
                return RedirectToAction("Index", "Home");
            }
            return View();
        }
    }
}