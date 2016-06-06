namespace WebDongHo.DbContext
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Hinhanh")]
    public partial class Hinhanh
    {
        public int HinhanhID { get; set; }

        public int SanphamID { get; set; }

        [Required]
        [StringLength(250)]
        public string Url { get; set; }

        public virtual Sanpham Sanpham { get; set; }
    }
}
