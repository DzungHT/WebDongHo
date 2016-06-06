using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using WebDongHo.DbContext;

namespace WebDongHo.Areas.Admin.Controllers
{
    public class AccountsController : Controller
    {
        private MyDbContext db = new MyDbContext();

        // GET: Admin/Accounts
        public ActionResult Index()
        {
            return View(db.Accounts.ToList());
        }

        // GET: Admin/Accounts/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Account account = db.Accounts.Find(id);
            if (account == null)
            {
                return HttpNotFound();
            }
            return View(account);
        }

        // GET: Admin/Accounts/Create
        public ActionResult Create()
        {
            return View();
        }
        

        // POST: Admin/Accounts/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]

        public ActionResult Create([Bind(Include = "AccountID,Username,Password,Hoten,Ngaysinh,Gioitinh,Email,SDT,Diachi,Role,Trangthai")] Account account)
        {
            //Kiểm tra hợp lệ dữ liệu
            if (ModelState.IsValid)
            {
                //kiểm tra tên đăng nhập, email có bị đã tồn tại hay chưa?
                var checkUserName = db.Accounts.Any(s => s.Username == account.Username);
                var checkEmail = db.Accounts.Any(s => s.Email == account.Email);

                //Các lỗi nếu có trong quá trình đăng ký tài khoản
                if (checkUserName)
                {
                    ModelState.AddModelError("", "Tên đăng nhập đã tồn tại, bạn vui lòng nhập tên tài khoản khác!");
                }
                if (checkEmail)
                {
                    ModelState.AddModelError("", "Email đã có người sử dụng, bạn vui lòng nhập email khác!");

                }
                if (checkUserName == true || checkEmail == true)
                {
                    //trả về view đăng ký và thông báo các lỗi ở trên
                    return View("Create");
                }
                else
                {
                    //Lưu thông tin tài khoản vào CSDL
                    db.Accounts.Add(account);
                    db.SaveChanges();
                    //xác thực tài khoản trong ứng dụng
                    FormsAuthentication.SetAuthCookie(account.Username, false);
                    //trả về trang chủ đăng ký thành công
                    return RedirectToAction("Index");

                }
            }
            else
            {
                //Trang báo lỗi nhập liệu không hợp lệ!
                return View(account);
            }
        }

        

        // GET: Admin/Accounts/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Account account = db.Accounts.Find(id);
            if (account == null)
            {
                return HttpNotFound();
            }
            return View(account);
        }

        // POST: Admin/Accounts/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "AccountID,Username,Password,Hoten,Ngaysinh,Gioitinh,Email,SDT,Diachi,Role,Trangthai")] Account account)
        {
            if (ModelState.IsValid)
            {
                db.Entry(account).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(account);
        }

        // GET: Admin/Accounts/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Account account = db.Accounts.Find(id);
            if (account == null)
            {
                return HttpNotFound();
            }
            return View(account);
        }

        // POST: Admin/Accounts/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Account account = db.Accounts.Find(id);
            db.Accounts.Remove(account);
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
