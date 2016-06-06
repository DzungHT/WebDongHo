using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDongHo.Models;
using WebDongHo.Helper;

namespace WebDongHo.Controllers
{
    public class CartController : Controller
    {
        [HttpPost]
        public int AddCart(CartItem item)
        {
            CartSession.AddCart(item);
            return CartSession.TotalItem;
        }
        [HttpPost]
        public int updateCart(CartItem item)
        {
            CartSession.UpdateCart(item);
            return CartSession.TotalItem;
        }
    }
}