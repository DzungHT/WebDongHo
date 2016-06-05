using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDongHo.DbContext;
using WebDongHo.Models;

namespace WebDongHo.Controllers
{
    public class DanhsachSPController : Controller
    {
        MyDbContext db = new MyDbContext();
        // GET: DanhsachSP
        public ActionResult Index(DanhsachSPRequest parm)
        {
            DanhsachSPModel data = new DanhsachSPModel();
            Func<Sanpham, bool> predicate = x => x.LoaiSPID == parm.Lspid;
            if (parm.Ldid != null)
            {
                predicate += x => x.LoaidayID == parm.Ldid;
            }
            if (parm.Lvid != null)
            {
                predicate += x => x.LoaivoID == parm.Lvid;
            }
            if (parm.Nhid != null)
            {
                predicate += x => x.NhanhieuID == parm.Nhid;
            }
            if (parm.Nlid != null)
            {
                predicate += x => x.NangluongID == parm.Nlid;
            }

            data.Sanphams = db.Sanphams.Where(predicate).ToList();
            return View(data);
        }
    }
}