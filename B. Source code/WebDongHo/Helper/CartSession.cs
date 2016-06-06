using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebDongHo.Models;

namespace WebDongHo.Helper
{
    public class CartSession
    {
        public static int TotalItem {
            get {
                int res = 0;
                var cart = HttpContext.Current.Session["Cart"] as List<CartItem>;
                if (cart != null && cart.Count > 0)
                {
                    cart.ForEach(x =>
                    {
                        res += x.Soluong;
                    });
                }
                return res;
            }
        }
        public static List<CartItem> Session
        {
            get
            {
                var cart = HttpContext.Current.Session["Cart"] as List<CartItem>;
                if(cart== null)
                {
                    cart = new List<CartItem>();
                }
                return cart;
            }
        }
        public static void init()
        {
            HttpContext.Current.Session["Cart"] = new List<CartItem>();
        }
        public static void AddCart(CartItem item)
        {
            if (HttpContext.Current.Session["Cart"] == null)
            {
                init();
            }
            var Cart = HttpContext.Current.Session["Cart"] as List<CartItem>;
            int pos = Cart.FindIndex(x => x.SanphamID == item.SanphamID);
            if (pos == -1)
            {
                // Nếu chưa sản phẩm trong giỏ hàng thì thêm vào cart
                if (item.Soluong >= 0)
                    Cart.Add(item);
            }
            else
            {
                // Nếu đã có sản phẩm trong giỏ hàng thì cập nhật thêm số lượng sản phẩm
                Cart[pos].Soluong += item.Soluong;
            }
        }

        public static void UpdateCart(CartItem item)
        {
            var Cart = HttpContext.Current.Session["Cart"] as List<CartItem>;
            int pos = Cart.FindIndex(x => x.SanphamID == item.SanphamID);

            if (pos != -1)
            {
                // Nếu đã có trong giỏi
                if (item.Soluong == -1)
                {
                    Cart.RemoveAt(pos);
                }
                else
                {
                    Cart[pos].Soluong = item.Soluong;
                }
            }
            // Chưa có trong giỏ thì không làm gì


        }

        
    }
}