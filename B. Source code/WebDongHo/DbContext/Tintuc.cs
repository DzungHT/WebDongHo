namespace WebDongHo.DbContext
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Tintuc")]
    public partial class Tintuc
    {
        public int TintucID { get; set; }

        public int LoaitintucID { get; set; }

        [Required]
        [StringLength(100)]
        public string Tieude { get; set; }

        [Required]
        [StringLength(250)]
        public string UrlAvatar { get; set; }

        public DateTime Ngaydang { get; set; }

        [Required]
        public string Noidung { get; set; }

        [StringLength(200)]
        public string Noidungngan { get; set; }

        public bool Hienthi { get; set; }

        public virtual Loaitintuc Loaitintuc { get; set; }
    }
}
