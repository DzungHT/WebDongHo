using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDongHo.DbContext;

namespace WebDongHo.Controllers
{
    public class DangkyController : Controller
    {
        MyDbContext db = new MyDbContext();
        // GET: Dangky
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Index(Account acc)
        {
            var a = db.Accounts.Where(x => x.Username == acc.Username).ToList();
            bool ok = false;
            if(a.Count == 0)
            {
                acc.Role = 3;
                acc.Trangthai = 1;
                db.Accounts.Add(acc);
                db.SaveChanges();
                ViewBag.MessageError = "Bạn có thể đăng nhập ngay bây giờ.";
                ok = true;
            }
            else
            {
                ViewBag.MessageError = "Tên tài khoản đã tồn tại!";
            }
            return View("Messages",ok);
        }
    }
}