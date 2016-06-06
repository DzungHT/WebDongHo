using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDongHo.DbContext;
using WebDongHo.Models;
using System.Data.Entity;
using System.Linq.Expressions;

namespace WebDongHo.Controllers
{
    public class DanhsachSPController : Controller
    {
        MyDbContext db = new MyDbContext();
        // GET: DanhsachSP
        public ActionResult Index(DanhsachSPRequest parm)
        {
            DanhsachSPModel data = new DanhsachSPModel();
            var query = db.Sanphams.Include(x => x.Hinhanhs).Where(x => x.LoaiSPID == parm.Lspid && x.LoaiSP.Hienthi);
            if (parm.Ldid != null && parm.Ldid != 0)
            {
                query = from s in query
                        where s.LoaidayID == parm.Ldid
                        select s;
            }
            if (parm.Lvid != null && parm.Lvid != 0)
            {
                query = from s in query
                        where s.LoaivoID == parm.Lvid
                        select s;
            }
            if (parm.Nhid != null && parm.Nhid != 0)
            {
                query = from s in query
                        where s.NhanhieuID == parm.Nhid
                        select s;
            }
            if (parm.Nlid != null && parm.Nlid != 0)
            {
                query = from s in query
                        where s.NangluongID == parm.Nlid
                        select s;
            }
            if(parm.Kg != null && parm.Kg != 0)
            {
                switch (parm.Kg)
                {
                    case 1:
                        query = from s in query
                                where s.Giaban < 5000
                                select s;
                        break;
                    case 2:
                        query = from s in query
                                where s.Giaban >= 5000 && s.Giaban <=10000
                                select s;
                        break;
                    case 3:
                        query = from s in query
                                where s.Giaban >= 10000 && s.Giaban <= 20000
                                select s;
                        break;
                    case 4:
                        query = from s in query
                                where s.Giaban >= 20000 && s.Giaban <= 50000
                                select s;
                        break;
                    case 5:
                        query = from s in query
                                where s.Giaban >= 50000
                                select s;
                        break;
                    default:
                        break;
                }
            }

            data.Sanphams = query.ToList();
            data.Loaidays = db.Loaidays.Where(x => x.Hienthi).ToList();
            data.Loaivoes = db.Loaivoes.Where(x => x.Hienthi).ToList();
            data.Nangluongs = db.Nangluongs.Where(x => x.Hienthi).ToList();
            data.Nhanhieux = db.Nhanhieux.Where(x => x.Hienthi).ToList();
            return View(data);
        }
    }
}