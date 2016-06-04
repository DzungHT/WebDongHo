namespace WebDongHo.DbContext
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Sanpham")]
    public partial class Sanpham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Sanpham()
        {
            Hinhanhs = new HashSet<Hinhanh>();
        }

        public int SanphamID { get; set; }

        [Required]
        [StringLength(50)]
        public string Ten { get; set; }

        [Required]
        public string Mota { get; set; }

        public int Giagoc { get; set; }

        public int Giaban { get; set; }

        public int LoaiSPID { get; set; }

        public int NhanhieuID { get; set; }

        public int NangluongID { get; set; }

        public int LoaidayID { get; set; }

        public int LoaivoID { get; set; }

        public int Soluong { get; set; }

        public float Khuyenmai { get; set; }

        public bool IsNoibat { get; set; }

        public bool Hienthi { get; set; }

        public bool HienthiTrangChu { get; set; }

        public bool IsDel { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Hinhanh> Hinhanhs { get; set; }

        public virtual Loaiday Loaiday { get; set; }

        public virtual LoaiSP LoaiSP { get; set; }

        public virtual Loaivo Loaivo { get; set; }

        public virtual Nangluong Nangluong { get; set; }

        public virtual Nhanhieu Nhanhieu { get; set; }
    }
}
