using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebDongHo.Models
{
    public class DanhsachSPRequest
    {
        /// <summary>
        /// Loại sp
        /// </summary>
        public int? Lspid { get; set; }
        /// <summary>
        /// Nhãn hiệu
        /// </summary>
        public int? Nhid { get; set; }
        /// <summary>
        /// Năng lượng
        /// </summary>
        public int? Nlid { get; set; }
        /// <summary>
        /// Loại dây
        /// </summary>
        public int? Ldid { get; set; }
        /// <summary>
        /// Loại vỏ
        /// </summary>
        public int? Lvid { get; set; }
        /// <summary>
        /// Khoảng giá
        /// </summary>
        public int? Kg { get; set; }
    }
}