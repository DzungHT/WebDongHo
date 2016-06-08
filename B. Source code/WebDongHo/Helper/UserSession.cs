using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebDongHo.DbContext;

namespace WebDongHo.Helper
{
    public class UserSession
    {
        public static Account User
        {
            get
            {
                return HttpContext.Current.Session["User"] as Account;
            }
            set
            {
                HttpContext.Current.Session["User"] = value;
            }
        }
    }
}