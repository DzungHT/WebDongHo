using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDongHo.DbContext;
using WebDongHo.Helper;
using System.Data.Entity;
using WebDongHo.Models;

namespace WebDongHo.Controllers
{
    public class CheckoutController : Controller
    {
        MyDbContext db = new MyDbContext();
        // GET: Checkout
        public ActionResult Index()
        {
            var data = (from s in db.Sanphams.Include(x => x.Hinhanhs).ToList()
                       join cartItem in CartSession.Session on s.SanphamID equals cartItem.SanphamID
                       select s).ToList();
            return View(data);
        }

        [HttpPost]
        public ActionResult Index(CheckoutModel cm)
        {
            Dathang dh = new Dathang()
            {
                DathangID = 0,
                Diachi = cm.Diachi,
                Hoten = cm.Hoten,
                SDT = cm.SDT,
                Ngaydat = DateTime.Now,
                Trangthai = false
            };
            db.Dathangs.Add(dh);
            Chitietdathang ctdh;
            bool ok = false;
            if(CartSession.Session.Count >0)
            {
                CartSession.Session.ForEach(x =>
                {
                    if(x.Soluong > 0)
                    {
                        ok = true;
                        ctdh = new Chitietdathang();
                        ctdh.DathangID = dh.DathangID;
                        ctdh.SanphamID = x.SanphamID;
                        ctdh.Soluong = x.Soluong;
                        db.Chitietdathangs.Add(ctdh);
                    }
                    else
                    {
                        ok = false;
                    }
                });
            }

            if (ok)
            {
                db.SaveChanges();
                CartSession.Session.Clear();
            }
            return View("Messages",ok);
        }
    }
}